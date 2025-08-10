import 'package:dartz/dartz.dart';
import 'package:test_task_made_in_dream/core/errors/failures.dart';
import 'package:test_task_made_in_dream/feature/domain/entities/recipe.dart';
import 'package:test_task_made_in_dream/feature/domain/repositories/recipe_repository.dart';

class GetRecipes {
  final RecipeRepository repository;

  GetRecipes(this.repository);

  Future<Either<Failure, List<Recipe>>> call({bool refresh = false}) async {
    return await repository.getRecipes(refresh: refresh);
  }
}