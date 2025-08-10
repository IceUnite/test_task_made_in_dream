import 'package:equatable/equatable.dart';

class Recipe extends Equatable {
  final int id;
  final String title;
  final String? text;
  final String? image;
  final List<String>? steps;
  final int? prepTime;
  final int? energy;
  final List<String>? ingredientsOne;
  final List<String>? ingredientsTwo;
  final String? dateAdded;
  final String? link;

  const Recipe({
    required this.id,
    required this.title,
    this.text,
    this.image,
    this.steps,
    this.prepTime,
    this.energy,
    this.ingredientsOne,
    this.ingredientsTwo,
    this.dateAdded,
    this.link,
  });

  // Краткое описание для карточки
  String get shortDescription {
    return text != null && text!.length > 100
        ? '${text!.substring(0, 100)}...'
        : text ?? '';
  }

  // Время приготовления в формате "XX мин"
  String? get prepTimeFormatted {
    return prepTime != null ? '$prepTime мин' : null;
  }

  @override
  List<Object?> get props => [
    id,
    title,
    text,
    image,
    steps,
    prepTime,
    energy,
    ingredientsOne,
    ingredientsTwo,
    dateAdded,
    link,
  ];
}