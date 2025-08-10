import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:test_task_made_in_dream/core/errors/failures.dart';
import 'package:test_task_made_in_dream/feature/domain/entities/recipe.dart';
import 'package:test_task_made_in_dream/feature/domain/repositories/recipe_repository.dart';
import 'package:test_task_made_in_dream/feature/domain/use_cases/usecase.dart';

class SearchRecipes implements UseCase<List<Recipe>, SearchRecipesParams> {
  final RecipeRepository repository;

  SearchRecipes(this.repository);

  @override
  Future<Either<Failure, List<Recipe>>> call(SearchRecipesParams params) async {
    return await repository.searchRecipes(
      query: params.query,
      withImage: params.withImage,
      maxPrepTime: params.maxPrepTime,
    );
  }
}

class SearchRecipesParams extends Equatable {
  final String query;
  final bool? withImage;
  final int? maxPrepTime;

  const SearchRecipesParams({
    required this.query,
    this.withImage,
    this.maxPrepTime,
  });

  @override
  List<Object?> get props => [query, withImage, maxPrepTime];
}