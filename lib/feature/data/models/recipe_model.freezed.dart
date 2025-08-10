// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  List<StepModel> get steps => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'prep_time')
  int get prepTime => throw _privateConstructorUsedError;
  @HiveField(3)
  int get energy => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'ingredients_one')
  List<IngredientModel> get ingredientsOne =>
      throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'ingredients_two')
  List<IngredientModel> get ingredientsTwo =>
      throw _privateConstructorUsedError;
  @HiveField(6)
  String get image => throw _privateConstructorUsedError;
  @HiveField(7)
  String get title => throw _privateConstructorUsedError;
  @HiveField(8)
  String get text => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'date_added')
  DateTime get dateAdded => throw _privateConstructorUsedError;
  @HiveField(10)
  String get link => throw _privateConstructorUsedError;

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipeModelCopyWith<RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeModelCopyWith<$Res> {
  factory $RecipeModelCopyWith(
          RecipeModel value, $Res Function(RecipeModel) then) =
      _$RecipeModelCopyWithImpl<$Res, RecipeModel>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) List<StepModel> steps,
      @HiveField(2) @JsonKey(name: 'prep_time') int prepTime,
      @HiveField(3) int energy,
      @HiveField(4)
      @JsonKey(name: 'ingredients_one')
      List<IngredientModel> ingredientsOne,
      @HiveField(5)
      @JsonKey(name: 'ingredients_two')
      List<IngredientModel> ingredientsTwo,
      @HiveField(6) String image,
      @HiveField(7) String title,
      @HiveField(8) String text,
      @HiveField(9) @JsonKey(name: 'date_added') DateTime dateAdded,
      @HiveField(10) String link});
}

/// @nodoc
class _$RecipeModelCopyWithImpl<$Res, $Val extends RecipeModel>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? steps = null,
    Object? prepTime = null,
    Object? energy = null,
    Object? ingredientsOne = null,
    Object? ingredientsTwo = null,
    Object? image = null,
    Object? title = null,
    Object? text = null,
    Object? dateAdded = null,
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<StepModel>,
      prepTime: null == prepTime
          ? _value.prepTime
          : prepTime // ignore: cast_nullable_to_non_nullable
              as int,
      energy: null == energy
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as int,
      ingredientsOne: null == ingredientsOne
          ? _value.ingredientsOne
          : ingredientsOne // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
      ingredientsTwo: null == ingredientsTwo
          ? _value.ingredientsTwo
          : ingredientsTwo // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeModelImplCopyWith<$Res>
    implements $RecipeModelCopyWith<$Res> {
  factory _$$RecipeModelImplCopyWith(
          _$RecipeModelImpl value, $Res Function(_$RecipeModelImpl) then) =
      __$$RecipeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) List<StepModel> steps,
      @HiveField(2) @JsonKey(name: 'prep_time') int prepTime,
      @HiveField(3) int energy,
      @HiveField(4)
      @JsonKey(name: 'ingredients_one')
      List<IngredientModel> ingredientsOne,
      @HiveField(5)
      @JsonKey(name: 'ingredients_two')
      List<IngredientModel> ingredientsTwo,
      @HiveField(6) String image,
      @HiveField(7) String title,
      @HiveField(8) String text,
      @HiveField(9) @JsonKey(name: 'date_added') DateTime dateAdded,
      @HiveField(10) String link});
}

/// @nodoc
class __$$RecipeModelImplCopyWithImpl<$Res>
    extends _$RecipeModelCopyWithImpl<$Res, _$RecipeModelImpl>
    implements _$$RecipeModelImplCopyWith<$Res> {
  __$$RecipeModelImplCopyWithImpl(
      _$RecipeModelImpl _value, $Res Function(_$RecipeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? steps = null,
    Object? prepTime = null,
    Object? energy = null,
    Object? ingredientsOne = null,
    Object? ingredientsTwo = null,
    Object? image = null,
    Object? title = null,
    Object? text = null,
    Object? dateAdded = null,
    Object? link = null,
  }) {
    return _then(_$RecipeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<StepModel>,
      prepTime: null == prepTime
          ? _value.prepTime
          : prepTime // ignore: cast_nullable_to_non_nullable
              as int,
      energy: null == energy
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as int,
      ingredientsOne: null == ingredientsOne
          ? _value._ingredientsOne
          : ingredientsOne // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
      ingredientsTwo: null == ingredientsTwo
          ? _value._ingredientsTwo
          : ingredientsTwo // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveField(0)
class _$RecipeModelImpl implements _RecipeModel {
  _$RecipeModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required final List<StepModel> steps,
      @HiveField(2) @JsonKey(name: 'prep_time') required this.prepTime,
      @HiveField(3) required this.energy,
      @HiveField(4)
      @JsonKey(name: 'ingredients_one')
      required final List<IngredientModel> ingredientsOne,
      @HiveField(5)
      @JsonKey(name: 'ingredients_two')
      required final List<IngredientModel> ingredientsTwo,
      @HiveField(6) required this.image,
      @HiveField(7) required this.title,
      @HiveField(8) required this.text,
      @HiveField(9) @JsonKey(name: 'date_added') required this.dateAdded,
      @HiveField(10) required this.link})
      : _steps = steps,
        _ingredientsOne = ingredientsOne,
        _ingredientsTwo = ingredientsTwo;

  @override
  @HiveField(0)
  final int id;
  final List<StepModel> _steps;
  @override
  @HiveField(1)
  List<StepModel> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  @HiveField(2)
  @JsonKey(name: 'prep_time')
  final int prepTime;
  @override
  @HiveField(3)
  final int energy;
  final List<IngredientModel> _ingredientsOne;
  @override
  @HiveField(4)
  @JsonKey(name: 'ingredients_one')
  List<IngredientModel> get ingredientsOne {
    if (_ingredientsOne is EqualUnmodifiableListView) return _ingredientsOne;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientsOne);
  }

  final List<IngredientModel> _ingredientsTwo;
  @override
  @HiveField(5)
  @JsonKey(name: 'ingredients_two')
  List<IngredientModel> get ingredientsTwo {
    if (_ingredientsTwo is EqualUnmodifiableListView) return _ingredientsTwo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientsTwo);
  }

  @override
  @HiveField(6)
  final String image;
  @override
  @HiveField(7)
  final String title;
  @override
  @HiveField(8)
  final String text;
  @override
  @HiveField(9)
  @JsonKey(name: 'date_added')
  final DateTime dateAdded;
  @override
  @HiveField(10)
  final String link;

  @override
  String toString() {
    return 'RecipeModel(id: $id, steps: $steps, prepTime: $prepTime, energy: $energy, ingredientsOne: $ingredientsOne, ingredientsTwo: $ingredientsTwo, image: $image, title: $title, text: $text, dateAdded: $dateAdded, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.prepTime, prepTime) ||
                other.prepTime == prepTime) &&
            (identical(other.energy, energy) || other.energy == energy) &&
            const DeepCollectionEquality()
                .equals(other._ingredientsOne, _ingredientsOne) &&
            const DeepCollectionEquality()
                .equals(other._ingredientsTwo, _ingredientsTwo) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_steps),
      prepTime,
      energy,
      const DeepCollectionEquality().hash(_ingredientsOne),
      const DeepCollectionEquality().hash(_ingredientsTwo),
      image,
      title,
      text,
      dateAdded,
      link);

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeModelImplCopyWith<_$RecipeModelImpl> get copyWith =>
      __$$RecipeModelImplCopyWithImpl<_$RecipeModelImpl>(this, _$identity);
}

abstract class _RecipeModel implements RecipeModel {
  factory _RecipeModel(
      {@HiveField(0) required final int id,
      @HiveField(1) required final List<StepModel> steps,
      @HiveField(2) @JsonKey(name: 'prep_time') required final int prepTime,
      @HiveField(3) required final int energy,
      @HiveField(4)
      @JsonKey(name: 'ingredients_one')
      required final List<IngredientModel> ingredientsOne,
      @HiveField(5)
      @JsonKey(name: 'ingredients_two')
      required final List<IngredientModel> ingredientsTwo,
      @HiveField(6) required final String image,
      @HiveField(7) required final String title,
      @HiveField(8) required final String text,
      @HiveField(9)
      @JsonKey(name: 'date_added')
      required final DateTime dateAdded,
      @HiveField(10) required final String link}) = _$RecipeModelImpl;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  List<StepModel> get steps;
  @override
  @HiveField(2)
  @JsonKey(name: 'prep_time')
  int get prepTime;
  @override
  @HiveField(3)
  int get energy;
  @override
  @HiveField(4)
  @JsonKey(name: 'ingredients_one')
  List<IngredientModel> get ingredientsOne;
  @override
  @HiveField(5)
  @JsonKey(name: 'ingredients_two')
  List<IngredientModel> get ingredientsTwo;
  @override
  @HiveField(6)
  String get image;
  @override
  @HiveField(7)
  String get title;
  @override
  @HiveField(8)
  String get text;
  @override
  @HiveField(9)
  @JsonKey(name: 'date_added')
  DateTime get dateAdded;
  @override
  @HiveField(10)
  String get link;

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeModelImplCopyWith<_$RecipeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StepModel _$StepModelFromJson(Map<String, dynamic> json) {
  return _StepModel.fromJson(json);
}

/// @nodoc
mixin _$StepModel {
  @HiveField(0)
  String get text => throw _privateConstructorUsedError;
  @HiveField(1)
  String get image1 => throw _privateConstructorUsedError;
  @HiveField(2)
  String get image2 => throw _privateConstructorUsedError;

  /// Serializes this StepModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StepModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StepModelCopyWith<StepModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepModelCopyWith<$Res> {
  factory $StepModelCopyWith(StepModel value, $Res Function(StepModel) then) =
      _$StepModelCopyWithImpl<$Res, StepModel>;
  @useResult
  $Res call(
      {@HiveField(0) String text,
      @HiveField(1) String image1,
      @HiveField(2) String image2});
}

/// @nodoc
class _$StepModelCopyWithImpl<$Res, $Val extends StepModel>
    implements $StepModelCopyWith<$Res> {
  _$StepModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StepModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? image1 = null,
    Object? image2 = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image1: null == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String,
      image2: null == image2
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StepModelImplCopyWith<$Res>
    implements $StepModelCopyWith<$Res> {
  factory _$$StepModelImplCopyWith(
          _$StepModelImpl value, $Res Function(_$StepModelImpl) then) =
      __$$StepModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String text,
      @HiveField(1) String image1,
      @HiveField(2) String image2});
}

/// @nodoc
class __$$StepModelImplCopyWithImpl<$Res>
    extends _$StepModelCopyWithImpl<$Res, _$StepModelImpl>
    implements _$$StepModelImplCopyWith<$Res> {
  __$$StepModelImplCopyWithImpl(
      _$StepModelImpl _value, $Res Function(_$StepModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StepModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? image1 = null,
    Object? image2 = null,
  }) {
    return _then(_$StepModelImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image1: null == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String,
      image2: null == image2
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveField(0)
class _$StepModelImpl implements _StepModel {
  _$StepModelImpl(
      {@HiveField(0) required this.text,
      @HiveField(1) required this.image1,
      @HiveField(2) required this.image2});

  factory _$StepModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepModelImplFromJson(json);

  @override
  @HiveField(0)
  final String text;
  @override
  @HiveField(1)
  final String image1;
  @override
  @HiveField(2)
  final String image2;

  @override
  String toString() {
    return 'StepModel(text: $text, image1: $image1, image2: $image2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepModelImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image1, image1) || other.image1 == image1) &&
            (identical(other.image2, image2) || other.image2 == image2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, image1, image2);

  /// Create a copy of StepModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StepModelImplCopyWith<_$StepModelImpl> get copyWith =>
      __$$StepModelImplCopyWithImpl<_$StepModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepModelImplToJson(
      this,
    );
  }
}

abstract class _StepModel implements StepModel {
  factory _StepModel(
      {@HiveField(0) required final String text,
      @HiveField(1) required final String image1,
      @HiveField(2) required final String image2}) = _$StepModelImpl;

  factory _StepModel.fromJson(Map<String, dynamic> json) =
      _$StepModelImpl.fromJson;

  @override
  @HiveField(0)
  String get text;
  @override
  @HiveField(1)
  String get image1;
  @override
  @HiveField(2)
  String get image2;

  /// Create a copy of StepModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StepModelImplCopyWith<_$StepModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EnergyModel _$EnergyModelFromJson(Map<String, dynamic> json) {
  return _EnergyModel.fromJson(json);
}

/// @nodoc
mixin _$EnergyModel {
  @HiveField(0)
  String get title => throw _privateConstructorUsedError;
  @HiveField(1)
  String get text => throw _privateConstructorUsedError;

  /// Serializes this EnergyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EnergyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnergyModelCopyWith<EnergyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnergyModelCopyWith<$Res> {
  factory $EnergyModelCopyWith(
          EnergyModel value, $Res Function(EnergyModel) then) =
      _$EnergyModelCopyWithImpl<$Res, EnergyModel>;
  @useResult
  $Res call({@HiveField(0) String title, @HiveField(1) String text});
}

/// @nodoc
class _$EnergyModelCopyWithImpl<$Res, $Val extends EnergyModel>
    implements $EnergyModelCopyWith<$Res> {
  _$EnergyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EnergyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnergyModelImplCopyWith<$Res>
    implements $EnergyModelCopyWith<$Res> {
  factory _$$EnergyModelImplCopyWith(
          _$EnergyModelImpl value, $Res Function(_$EnergyModelImpl) then) =
      __$$EnergyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String title, @HiveField(1) String text});
}

/// @nodoc
class __$$EnergyModelImplCopyWithImpl<$Res>
    extends _$EnergyModelCopyWithImpl<$Res, _$EnergyModelImpl>
    implements _$$EnergyModelImplCopyWith<$Res> {
  __$$EnergyModelImplCopyWithImpl(
      _$EnergyModelImpl _value, $Res Function(_$EnergyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EnergyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
  }) {
    return _then(_$EnergyModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveField(0)
class _$EnergyModelImpl implements _EnergyModel {
  _$EnergyModelImpl(
      {@HiveField(0) required this.title, @HiveField(1) required this.text});

  factory _$EnergyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnergyModelImplFromJson(json);

  @override
  @HiveField(0)
  final String title;
  @override
  @HiveField(1)
  final String text;

  @override
  String toString() {
    return 'EnergyModel(title: $title, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnergyModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, text);

  /// Create a copy of EnergyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnergyModelImplCopyWith<_$EnergyModelImpl> get copyWith =>
      __$$EnergyModelImplCopyWithImpl<_$EnergyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnergyModelImplToJson(
      this,
    );
  }
}

abstract class _EnergyModel implements EnergyModel {
  factory _EnergyModel(
      {@HiveField(0) required final String title,
      @HiveField(1) required final String text}) = _$EnergyModelImpl;

  factory _EnergyModel.fromJson(Map<String, dynamic> json) =
      _$EnergyModelImpl.fromJson;

  @override
  @HiveField(0)
  String get title;
  @override
  @HiveField(1)
  String get text;

  /// Create a copy of EnergyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnergyModelImplCopyWith<_$EnergyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IngredientModel _$IngredientModelFromJson(Map<String, dynamic> json) {
  return _IngredientModel.fromJson(json);
}

/// @nodoc
mixin _$IngredientModel {
  @HiveField(0)
  String get title => throw _privateConstructorUsedError;
  @HiveField(1)
  String get text => throw _privateConstructorUsedError;

  /// Serializes this IngredientModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IngredientModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IngredientModelCopyWith<IngredientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientModelCopyWith<$Res> {
  factory $IngredientModelCopyWith(
          IngredientModel value, $Res Function(IngredientModel) then) =
      _$IngredientModelCopyWithImpl<$Res, IngredientModel>;
  @useResult
  $Res call({@HiveField(0) String title, @HiveField(1) String text});
}

/// @nodoc
class _$IngredientModelCopyWithImpl<$Res, $Val extends IngredientModel>
    implements $IngredientModelCopyWith<$Res> {
  _$IngredientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IngredientModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientModelImplCopyWith<$Res>
    implements $IngredientModelCopyWith<$Res> {
  factory _$$IngredientModelImplCopyWith(_$IngredientModelImpl value,
          $Res Function(_$IngredientModelImpl) then) =
      __$$IngredientModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String title, @HiveField(1) String text});
}

/// @nodoc
class __$$IngredientModelImplCopyWithImpl<$Res>
    extends _$IngredientModelCopyWithImpl<$Res, _$IngredientModelImpl>
    implements _$$IngredientModelImplCopyWith<$Res> {
  __$$IngredientModelImplCopyWithImpl(
      _$IngredientModelImpl _value, $Res Function(_$IngredientModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of IngredientModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
  }) {
    return _then(_$IngredientModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveField(0)
class _$IngredientModelImpl implements _IngredientModel {
  _$IngredientModelImpl(
      {@HiveField(0) required this.title, @HiveField(1) required this.text});

  factory _$IngredientModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientModelImplFromJson(json);

  @override
  @HiveField(0)
  final String title;
  @override
  @HiveField(1)
  final String text;

  @override
  String toString() {
    return 'IngredientModel(title: $title, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, text);

  /// Create a copy of IngredientModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientModelImplCopyWith<_$IngredientModelImpl> get copyWith =>
      __$$IngredientModelImplCopyWithImpl<_$IngredientModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientModelImplToJson(
      this,
    );
  }
}

abstract class _IngredientModel implements IngredientModel {
  factory _IngredientModel(
      {@HiveField(0) required final String title,
      @HiveField(1) required final String text}) = _$IngredientModelImpl;

  factory _IngredientModel.fromJson(Map<String, dynamic> json) =
      _$IngredientModelImpl.fromJson;

  @override
  @HiveField(0)
  String get title;
  @override
  @HiveField(1)
  String get text;

  /// Create a copy of IngredientModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IngredientModelImplCopyWith<_$IngredientModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
