import 'package:dartz/dartz.dart';
import 'package:test_task_made_in_dream/core/errors/failures.dart';
import 'package:test_task_made_in_dream/feature/data/datasources/recipe_local_data_source.dart';
import 'package:test_task_made_in_dream/feature/data/datasources/recipe_remote_data_source.dart';
import 'package:test_task_made_in_dream/feature/data/models/recipe_model.dart';
import 'package:test_task_made_in_dream/feature/domain/entities/recipe.dart';
import 'package:test_task_made_in_dream/feature/domain/mappers/recipe_mapper.dart';
import 'package:test_task_made_in_dream/feature/domain/repositories/recipe_repository.dart';

import '../../../core/errors/exeptions.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final RecipeRemoteDataSource remoteDataSource;
  final RecipeLocalDataSource localDataSource;

  RecipeRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<Recipe>>> getRecipes({bool refresh = true}) async {
    try {
      List<RecipeModel> models;

      if (refresh) {
        // Принудительное обновление - только из сети
        models = await remoteDataSource.getRecipes();
        print(models);
        print(21124221);

        await localDataSource.cacheRecipes(models);
      } else {
        try {
          // Сначала пробуем получить из сети
          models = await remoteDataSource.getRecipes();
          await localDataSource.cacheRecipes(models);
        } on ServerException catch (_) {
          // Если ошибка сервера - пробуем из кэша
          models = await localDataSource.getCachedRecipes();
          if (models.isEmpty) {
            // return Left(CacheFailure('Нет данных в оффлайне'));
          }
        }
      }

      // Преобразуем модели в сущности
      return Right(models.map((model) => model.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(UnknownFailure('Неизвестная ошибка: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, List<Recipe>>> searchRecipes({
    required String query,
    bool? withImage,
    int? maxPrepTime,
  }) async {
    try {
      final result = await getRecipes();

      return result.fold(
            (failure) => Left(failure),
            (recipes) {
          final queryLower = query.toLowerCase();

          final filtered = recipes.where((recipe) {
            // Поиск по названию и описанию
            final matchesTitle = recipe.title.toLowerCase().contains(queryLower);
            final matchesText = recipe.text?.toLowerCase().contains(queryLower) ?? false;

            // Поиск по ингредиентам
            final matchesIngredients =
                recipe.ingredientsOne!.any((ing) => ing.toLowerCase().contains(queryLower)) ||
                    recipe.ingredientsTwo!.any((ing) => ing.toLowerCase().contains(queryLower));

            // Фильтр по изображению
            final matchesImage = withImage != null
                ? (withImage ? (recipe.image?.isNotEmpty ?? false) : true)
                : true;

            // Фильтр по времени приготовления
            final matchesTime = maxPrepTime != null && recipe.prepTime != null
                ? (recipe.prepTime! <= maxPrepTime)
                : true;

            return (matchesTitle || matchesText || matchesIngredients) &&
                matchesImage &&
                matchesTime;
          }).toList();

          return Right(filtered);
        },
      );
    } catch (e) {
      return Left(UnknownFailure('Ошибка поиска: ${e.toString()}'));
    }
  }
}