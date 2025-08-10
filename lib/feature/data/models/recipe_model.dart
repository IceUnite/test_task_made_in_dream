import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed
class RecipeModel with _$RecipeModel {
  const factory RecipeModel({
    required int id,
    required String title,
    String? text,
    String? image,
    List<String>? steps,
    @JsonKey(name: 'prep_time') int? prepTime,
    int? energy,
    @JsonKey(name: 'ingredients_one') List<String>? ingredientsOne,
    @JsonKey(name: 'ingredients_two') List<String>? ingredientsTwo,
    @JsonKey(name: 'date_added') String? dateAdded,
    String? link,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}