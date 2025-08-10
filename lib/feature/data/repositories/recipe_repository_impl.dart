import 'package:dartz/dartz.dart';
import 'package:test_task_made_in_dream/feature/domain/entities/recipe.dart';
import 'package:test_task_made_in_dream/feature/domain/mappers/recipe_mapper.dart';

import '../../../core/errors/exeptions.dart';
import '../../../core/errors/failures.dart';
import '../../domain/repositories/recipe_repository.dart';
import '../datasources/recipe_local_data_source.dart';
import '../datasources/recipe_remote_data_source.dart';
import '../models/recipe_model.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final RecipeRemoteDataSource remoteDataSource;
  final RecipeLocalDataSource localDataSource;

  RecipeRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<Recipe>>> getRecipes({ // Изменяем возвращаемый тип
    bool refresh = false,
  }) async {
    try {
      List<RecipeModel> models;

      if (refresh) {
        models = await remoteDataSource.getRecipes();
        await localDataSource.cacheRecipes(models);
      } else {
        try {
          models = await remoteDataSource.getRecipes();
          await localDataSource.cacheRecipes(models);
        } on ServerException {
          models = await localDataSource.getCachedRecipes();
          if (models.isEmpty) {
            return left(CacheFailure());
          }
        }
      }

      // Преобразуем модели в сущности перед возвратом
      return right(models.toEntities());
    } on ServerException {
      return left(ServerFailure());
    } on CacheException {
      return left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, List<Recipe>>> searchRecipes({
    required String query,
    bool? withImage,
    int? maxPrepTime
  }) {
    // TODO: implement searchRecipes
    throw UnimplementedError();
  }
}