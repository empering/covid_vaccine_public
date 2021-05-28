// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'institution_sigugun_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstitutionSigugunModel _$InstitutionSigugunModelFromJson(
    Map<String, dynamic> json) {
  return _InstitutionSigugunModel.fromJson(json);
}

/// @nodoc
class _$InstitutionSigugunModelTearOff {
  const _$InstitutionSigugunModelTearOff();

  _InstitutionSigugunModel call(
      {required String ditord, required String sidditnam}) {
    return _InstitutionSigugunModel(
      ditord: ditord,
      sidditnam: sidditnam,
    );
  }

  InstitutionSigugunModel fromJson(Map<String, Object> json) {
    return InstitutionSigugunModel.fromJson(json);
  }
}

/// @nodoc
const $InstitutionSigugunModel = _$InstitutionSigugunModelTearOff();

/// @nodoc
mixin _$InstitutionSigugunModel {
  String get ditord => throw _privateConstructorUsedError;
  String get sidditnam => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstitutionSigugunModelCopyWith<InstitutionSigugunModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstitutionSigugunModelCopyWith<$Res> {
  factory $InstitutionSigugunModelCopyWith(InstitutionSigugunModel value,
          $Res Function(InstitutionSigugunModel) then) =
      _$InstitutionSigugunModelCopyWithImpl<$Res>;
  $Res call({String ditord, String sidditnam});
}

/// @nodoc
class _$InstitutionSigugunModelCopyWithImpl<$Res>
    implements $InstitutionSigugunModelCopyWith<$Res> {
  _$InstitutionSigugunModelCopyWithImpl(this._value, this._then);

  final InstitutionSigugunModel _value;
  // ignore: unused_field
  final $Res Function(InstitutionSigugunModel) _then;

  @override
  $Res call({
    Object? ditord = freezed,
    Object? sidditnam = freezed,
  }) {
    return _then(_value.copyWith(
      ditord: ditord == freezed
          ? _value.ditord
          : ditord // ignore: cast_nullable_to_non_nullable
              as String,
      sidditnam: sidditnam == freezed
          ? _value.sidditnam
          : sidditnam // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InstitutionSigugunModelCopyWith<$Res>
    implements $InstitutionSigugunModelCopyWith<$Res> {
  factory _$InstitutionSigugunModelCopyWith(_InstitutionSigugunModel value,
          $Res Function(_InstitutionSigugunModel) then) =
      __$InstitutionSigugunModelCopyWithImpl<$Res>;
  @override
  $Res call({String ditord, String sidditnam});
}

/// @nodoc
class __$InstitutionSigugunModelCopyWithImpl<$Res>
    extends _$InstitutionSigugunModelCopyWithImpl<$Res>
    implements _$InstitutionSigugunModelCopyWith<$Res> {
  __$InstitutionSigugunModelCopyWithImpl(_InstitutionSigugunModel _value,
      $Res Function(_InstitutionSigugunModel) _then)
      : super(_value, (v) => _then(v as _InstitutionSigugunModel));

  @override
  _InstitutionSigugunModel get _value =>
      super._value as _InstitutionSigugunModel;

  @override
  $Res call({
    Object? ditord = freezed,
    Object? sidditnam = freezed,
  }) {
    return _then(_InstitutionSigugunModel(
      ditord: ditord == freezed
          ? _value.ditord
          : ditord // ignore: cast_nullable_to_non_nullable
              as String,
      sidditnam: sidditnam == freezed
          ? _value.sidditnam
          : sidditnam // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InstitutionSigugunModel implements _InstitutionSigugunModel {
  const _$_InstitutionSigugunModel(
      {required this.ditord, required this.sidditnam});

  factory _$_InstitutionSigugunModel.fromJson(Map<String, dynamic> json) =>
      _$_$_InstitutionSigugunModelFromJson(json);

  @override
  final String ditord;
  @override
  final String sidditnam;

  @override
  String toString() {
    return 'InstitutionSigugunModel(ditord: $ditord, sidditnam: $sidditnam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InstitutionSigugunModel &&
            (identical(other.ditord, ditord) ||
                const DeepCollectionEquality().equals(other.ditord, ditord)) &&
            (identical(other.sidditnam, sidditnam) ||
                const DeepCollectionEquality()
                    .equals(other.sidditnam, sidditnam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ditord) ^
      const DeepCollectionEquality().hash(sidditnam);

  @JsonKey(ignore: true)
  @override
  _$InstitutionSigugunModelCopyWith<_InstitutionSigugunModel> get copyWith =>
      __$InstitutionSigugunModelCopyWithImpl<_InstitutionSigugunModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InstitutionSigugunModelToJson(this);
  }
}

abstract class _InstitutionSigugunModel implements InstitutionSigugunModel {
  const factory _InstitutionSigugunModel(
      {required String ditord,
      required String sidditnam}) = _$_InstitutionSigugunModel;

  factory _InstitutionSigugunModel.fromJson(Map<String, dynamic> json) =
      _$_InstitutionSigugunModel.fromJson;

  @override
  String get ditord => throw _privateConstructorUsedError;
  @override
  String get sidditnam => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InstitutionSigugunModelCopyWith<_InstitutionSigugunModel> get copyWith =>
      throw _privateConstructorUsedError;
}
