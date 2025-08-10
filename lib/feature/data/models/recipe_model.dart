import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed
@HiveType(typeId: 0)
class RecipeModel with _$RecipeModel {
  @HiveField(0)
  factory RecipeModel({
    @HiveField(0) required int id,
    @HiveField(1) required List<StepModel> steps,
    @HiveField(2) @JsonKey(name: 'prep_time') required int prepTime,
    @HiveField(3) required int energy,
    @HiveField(4) @JsonKey(name: 'ingredients_one') required List<IngredientModel> ingredientsOne,
    @HiveField(5) @JsonKey(name: 'ingredients_two') required List<IngredientModel> ingredientsTwo,
    @HiveField(6) required String image,
    @HiveField(7) required String title,
    @HiveField(8) required String text,
    @HiveField(9) @JsonKey(name: 'date_added') required DateTime dateAdded,
    @HiveField(10) required String link,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    return RecipeModel(
      id: int.parse(json['id'].toString()),
      steps: (json['steps'] as List).map((e) => StepModel.fromJson(e)).toList(),
      prepTime: int.tryParse(json['prep_time'].toString()) ?? 0,
      energy: _calculateTotalEnergy(json['energy']),
      ingredientsOne: (json['ingredients_one'] as List).map((e) => IngredientModel.fromJson(e)).toList(),
      ingredientsTwo: (json['ingredients_two'] as List).map((e) => IngredientModel.fromJson(e)).toList(),
      image: json['image'],
      title: json['title'],
      text: json['text'],
      dateAdded: DateTime.parse(json['date_added']),
      link: json['link'],
    );
  }
}

int _calculateTotalEnergy(List<dynamic> energyList) {
  return energyList.fold(0, (sum, item) {
    if (item is Map) {
      return sum + (int.tryParse(item['text'].toString()) ?? 0);
    }
    return sum;
  });
}

@freezed
@HiveType(typeId: 1)
class StepModel with _$StepModel {
  @HiveField(0)
  factory StepModel({
    @HiveField(0) required String text,
    @HiveField(1) required String image1,
    @HiveField(2) required String image2,
  }) = _StepModel;

  factory StepModel.fromJson(Map<String, dynamic> json) =>
      _$StepModelFromJson(json);
}

@freezed
@HiveType(typeId: 2)
class EnergyModel with _$EnergyModel {
  @HiveField(0)
  factory EnergyModel({
    @HiveField(0) required String title,
    @HiveField(1) required String text,
  }) = _EnergyModel;

  factory EnergyModel.fromJson(Map<String, dynamic> json) =>
      _$EnergyModelFromJson(json);
}

@freezed
@HiveType(typeId: 3)
class IngredientModel with _$IngredientModel {
  @HiveField(0)
  factory IngredientModel({
    @HiveField(0) required String title,
    @HiveField(1) required String text,
  }) = _IngredientModel;

  factory IngredientModel.fromJson(Map<String, dynamic> json) =>
      _$IngredientModelFromJson(json);
}