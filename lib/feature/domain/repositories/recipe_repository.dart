import 'package:dartz/dartz.dart';
import 'package:test_task_made_in_dream/core/errors/failures.dart';
import 'package:test_task_made_in_dream/feature/domain/entities/recipe.dart';

abstract class RecipeRepository {
  Future<Either<Failure, List<Recipe>>> getRecipes({bool refresh = false});

  Future<Either<Failure, List<Recipe>>> searchRecipes({
    required String query,
    bool? withImage,
    int? maxPrepTime,
  });
}