import '../../data/models/recipe_model.dart';
import '../entities/recipe.dart';

extension RecipeMapper on RecipeModel {
  Recipe toEntity() {
    return Recipe(
      id: id,
      title: title,
      text: text,
      image: image,
      steps: steps,
      prepTime: prepTime,
      energy: energy,
      ingredientsOne: ingredientsOne,
      ingredientsTwo: ingredientsTwo,
      dateAdded: dateAdded,
      link: link,
    );
  }
}

extension RecipeListMapper on List<RecipeModel> {
  List<Recipe> toEntities() {
    return map((model) => model.toEntity()).toList();
  }
}