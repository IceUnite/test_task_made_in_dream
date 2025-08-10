import 'package:dartz/dartz.dart';

import '../../../core/errors/failures.dart';
import '../entities/recipe.dart';
import '../repositories/recipe_repository.dart';
import 'get_reciepts_params.dart';


class GetRecipes {
  final RecipeRepository repository;

  GetRecipes(this.repository);

  Future<Either<Failure, List<Recipe>>> call(Params params) async {
    return await repository.getRecipes(refresh: params.refresh);
  }
}