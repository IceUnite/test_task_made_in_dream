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

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) {
  return _RecipeModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<String>? get steps => throw _privateConstructorUsedError;
  @JsonKey(name: 'prep_time')
  int? get prepTime => throw _privateConstructorUsedError;
  int? get energy => throw _privateConstructorUsedError;
  @JsonKey(name: 'ingredients_one')
  List<String>? get ingredientsOne => throw _privateConstructorUsedError;
  @JsonKey(name: 'ingredients_two')
  List<String>? get ingredientsTwo => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_added')
  String? get dateAdded => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  /// Serializes this RecipeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
      {int id,
      String title,
      String? text,
      String? image,
      List<String>? steps,
      @JsonKey(name: 'prep_time') int? prepTime,
      int? energy,
      @JsonKey(name: 'ingredients_one') List<String>? ingredientsOne,
      @JsonKey(name: 'ingredients_two') List<String>? ingredientsTwo,
      @JsonKey(name: 'date_added') String? dateAdded,
      String? link});
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
    Object? title = null,
    Object? text = freezed,
    Object? image = freezed,
    Object? steps = freezed,
    Object? prepTime = freezed,
    Object? energy = freezed,
    Object? ingredientsOne = freezed,
    Object? ingredientsTwo = freezed,
    Object? dateAdded = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      prepTime: freezed == prepTime
          ? _value.prepTime
          : prepTime // ignore: cast_nullable_to_non_nullable
              as int?,
      energy: freezed == energy
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as int?,
      ingredientsOne: freezed == ingredientsOne
          ? _value.ingredientsOne
          : ingredientsOne // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ingredientsTwo: freezed == ingredientsTwo
          ? _value.ingredientsTwo
          : ingredientsTwo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      dateAdded: freezed == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {int id,
      String title,
      String? text,
      String? image,
      List<String>? steps,
      @JsonKey(name: 'prep_time') int? prepTime,
      int? energy,
      @JsonKey(name: 'ingredients_one') List<String>? ingredientsOne,
      @JsonKey(name: 'ingredients_two') List<String>? ingredientsTwo,
      @JsonKey(name: 'date_added') String? dateAdded,
      String? link});
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
    Object? title = null,
    Object? text = freezed,
    Object? image = freezed,
    Object? steps = freezed,
    Object? prepTime = freezed,
    Object? energy = freezed,
    Object? ingredientsOne = freezed,
    Object? ingredientsTwo = freezed,
    Object? dateAdded = freezed,
    Object? link = freezed,
  }) {
    return _then(_$RecipeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      steps: freezed == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      prepTime: freezed == prepTime
          ? _value.prepTime
          : prepTime // ignore: cast_nullable_to_non_nullable
              as int?,
      energy: freezed == energy
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as int?,
      ingredientsOne: freezed == ingredientsOne
          ? _value._ingredientsOne
          : ingredientsOne // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ingredientsTwo: freezed == ingredientsTwo
          ? _value._ingredientsTwo
          : ingredientsTwo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      dateAdded: freezed == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeModelImpl implements _RecipeModel {
  const _$RecipeModelImpl(
      {required this.id,
      required this.title,
      this.text,
      this.image,
      final List<String>? steps,
      @JsonKey(name: 'prep_time') this.prepTime,
      this.energy,
      @JsonKey(name: 'ingredients_one') final List<String>? ingredientsOne,
      @JsonKey(name: 'ingredients_two') final List<String>? ingredientsTwo,
      @JsonKey(name: 'date_added') this.dateAdded,
      this.link})
      : _steps = steps,
        _ingredientsOne = ingredientsOne,
        _ingredientsTwo = ingredientsTwo;

  factory _$RecipeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? text;
  @override
  final String? image;
  final List<String>? _steps;
  @override
  List<String>? get steps {
    final value = _steps;
    if (value == null) return null;
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'prep_time')
  final int? prepTime;
  @override
  final int? energy;
  final List<String>? _ingredientsOne;
  @override
  @JsonKey(name: 'ingredients_one')
  List<String>? get ingredientsOne {
    final value = _ingredientsOne;
    if (value == null) return null;
    if (_ingredientsOne is EqualUnmodifiableListView) return _ingredientsOne;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _ingredientsTwo;
  @override
  @JsonKey(name: 'ingredients_two')
  List<String>? get ingredientsTwo {
    final value = _ingredientsTwo;
    if (value == null) return null;
    if (_ingredientsTwo is EqualUnmodifiableListView) return _ingredientsTwo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'date_added')
  final String? dateAdded;
  @override
  final String? link;

  @override
  String toString() {
    return 'RecipeModel(id: $id, title: $title, text: $text, image: $image, steps: $steps, prepTime: $prepTime, energy: $energy, ingredientsOne: $ingredientsOne, ingredientsTwo: $ingredientsTwo, dateAdded: $dateAdded, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.prepTime, prepTime) ||
                other.prepTime == prepTime) &&
            (identical(other.energy, energy) || other.energy == energy) &&
            const DeepCollectionEquality()
                .equals(other._ingredientsOne, _ingredientsOne) &&
            const DeepCollectionEquality()
                .equals(other._ingredientsTwo, _ingredientsTwo) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      text,
      image,
      const DeepCollectionEquality().hash(_steps),
      prepTime,
      energy,
      const DeepCollectionEquality().hash(_ingredientsOne),
      const DeepCollectionEquality().hash(_ingredientsTwo),
      dateAdded,
      link);

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeModelImplCopyWith<_$RecipeModelImpl> get copyWith =>
      __$$RecipeModelImplCopyWithImpl<_$RecipeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeModelImplToJson(
      this,
    );
  }
}

abstract class _RecipeModel implements RecipeModel {
  const factory _RecipeModel(
      {required final int id,
      required final String title,
      final String? text,
      final String? image,
      final List<String>? steps,
      @JsonKey(name: 'prep_time') final int? prepTime,
      final int? energy,
      @JsonKey(name: 'ingredients_one') final List<String>? ingredientsOne,
      @JsonKey(name: 'ingredients_two') final List<String>? ingredientsTwo,
      @JsonKey(name: 'date_added') final String? dateAdded,
      final String? link}) = _$RecipeModelImpl;

  factory _RecipeModel.fromJson(Map<String, dynamic> json) =
      _$RecipeModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get text;
  @override
  String? get image;
  @override
  List<String>? get steps;
  @override
  @JsonKey(name: 'prep_time')
  int? get prepTime;
  @override
  int? get energy;
  @override
  @JsonKey(name: 'ingredients_one')
  List<String>? get ingredientsOne;
  @override
  @JsonKey(name: 'ingredients_two')
  List<String>? get ingredientsTwo;
  @override
  @JsonKey(name: 'date_added')
  String? get dateAdded;
  @override
  String? get link;

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeModelImplCopyWith<_$RecipeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
