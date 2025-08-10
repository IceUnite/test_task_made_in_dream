// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeModelImpl _$$RecipeModelImplFromJson(Map<String, dynamic> json) =>
    _$RecipeModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      text: json['text'] as String?,
      image: json['image'] as String?,
      steps:
          (json['steps'] as List<dynamic>?)?.map((e) => e as String).toList(),
      prepTime: (json['prep_time'] as num?)?.toInt(),
      energy: (json['energy'] as num?)?.toInt(),
      ingredientsOne: (json['ingredients_one'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      ingredientsTwo: (json['ingredients_two'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      dateAdded: json['date_added'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$RecipeModelImplToJson(_$RecipeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'text': instance.text,
      'image': instance.image,
      'steps': instance.steps,
      'prep_time': instance.prepTime,
      'energy': instance.energy,
      'ingredients_one': instance.ingredientsOne,
      'ingredients_two': instance.ingredientsTwo,
      'date_added': instance.dateAdded,
      'link': instance.link,
    };
