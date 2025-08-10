import 'package:test_task_made_in_dream/feature/data/models/recipe_model.dart';
import 'package:test_task_made_in_dream/feature/domain/entities/recipe.dart';

extension RecipeMapper on RecipeModel {
  Recipe toEntity() {
    return Recipe(
      id: id,
      title: title,
      text: text,
      image: image,
      steps: steps.map((step) => step.text).toList(),
      prepTime: prepTime,
      energy: energy,
      ingredientsOne: ingredientsOne.map((i) => '${i.title} ${i.text}').toList(),
      ingredientsTwo: ingredientsTwo.map((i) => '${i.title} ${i.text}').toList(),
      dateAdded: dateAdded.toString(),
      link: link,
    );
  }
}