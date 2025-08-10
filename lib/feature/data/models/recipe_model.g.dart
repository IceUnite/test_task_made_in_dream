// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipeModelAdapter extends TypeAdapter<RecipeModel> {
  @override
  final int typeId = 0;

  @override
  RecipeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecipeModel(
      id: fields[0] as int,
      steps: (fields[1] as List).cast<StepModel>(),
      prepTime: fields[2] as int,
      energy: fields[3] as int,
      ingredientsOne: (fields[4] as List).cast<IngredientModel>(),
      ingredientsTwo: (fields[5] as List).cast<IngredientModel>(),
      image: fields[6] as String,
      title: fields[7] as String,
      text: fields[8] as String,
      dateAdded: fields[9] as DateTime,
      link: fields[10] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RecipeModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.steps)
      ..writeByte(2)
      ..write(obj.prepTime)
      ..writeByte(3)
      ..write(obj.energy)
      ..writeByte(4)
      ..write(obj.ingredientsOne)
      ..writeByte(5)
      ..write(obj.ingredientsTwo)
      ..writeByte(6)
      ..write(obj.image)
      ..writeByte(7)
      ..write(obj.title)
      ..writeByte(8)
      ..write(obj.text)
      ..writeByte(9)
      ..write(obj.dateAdded)
      ..writeByte(10)
      ..write(obj.link);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StepModelAdapter extends TypeAdapter<StepModel> {
  @override
  final int typeId = 1;

  @override
  StepModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StepModel(
      text: fields[0] as String,
      image1: fields[1] as String,
      image2: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StepModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.image1)
      ..writeByte(2)
      ..write(obj.image2);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StepModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EnergyModelAdapter extends TypeAdapter<EnergyModel> {
  @override
  final int typeId = 2;

  @override
  EnergyModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EnergyModel(
      title: fields[0] as String,
      text: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, EnergyModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EnergyModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class IngredientModelAdapter extends TypeAdapter<IngredientModel> {
  @override
  final int typeId = 3;

  @override
  IngredientModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IngredientModel(
      title: fields[0] as String,
      text: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, IngredientModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IngredientModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StepModelImpl _$$StepModelImplFromJson(Map<String, dynamic> json) =>
    _$StepModelImpl(
      text: json['text'] as String,
      image1: json['image1'] as String,
      image2: json['image2'] as String,
    );

Map<String, dynamic> _$$StepModelImplToJson(_$StepModelImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'image1': instance.image1,
      'image2': instance.image2,
    };

_$EnergyModelImpl _$$EnergyModelImplFromJson(Map<String, dynamic> json) =>
    _$EnergyModelImpl(
      title: json['title'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$EnergyModelImplToJson(_$EnergyModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
    };

_$IngredientModelImpl _$$IngredientModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IngredientModelImpl(
      title: json['title'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$IngredientModelImplToJson(
        _$IngredientModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
    };
