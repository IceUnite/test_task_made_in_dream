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

    final result = await getRecipes(Params(refresh: refresh));

    result.fold(
          (failure) => emit(RecipeError(_mapFailureToMessage(failure))),
          (recipes) => emit(RecipeLoaded(recipes)),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Ошибка сервера';
      case CacheFailure:
        return 'Нет данных в оффлайне';
      default:
        return 'Неизвестная ошибка';
    }
  }
}