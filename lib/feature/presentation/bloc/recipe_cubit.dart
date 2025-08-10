import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/errors/failures.dart';
import '../../domain/entities/recipe.dart';
import '../../domain/use_cases/get_reciepts.dart';
import '../../domain/use_cases/get_reciepts_params.dart';

part 'recipe_state.dart';

class RecipeCubit extends Cubit<RecipeState> {
  final GetRecipes getRecipes;

  RecipeCubit({required this.getRecipes}) : super(RecipeInitial());

  Future<void> fetchRecipes({bool refresh = false}) async {
    if (state is RecipeLoading) return;

    emit(RecipeLoading());

    final result = await getRecipes(refresh: refresh);
    print(result);
    print(134233);

    result.fold(
            (failure) => emit(RecipeError(failure.message)),
    (recipes) => emit(RecipeLoaded(recipes)),
    );
  }

}