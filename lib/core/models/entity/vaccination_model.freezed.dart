// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'vaccination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VaccinationModel _$VaccinationModelFromJson(Map<String, dynamic> json) {
  return _VaccinationModel.fromJson(json);
}

/// @nodoc
class _$VaccinationModelTearOff {
  const _$VaccinationModelTearOff();

  _VaccinationModel call(
      {required int currentCount,
      required List<Vaccination> data,
      required int matchCount,
      required int page,
      required int perPage,
      required int totalCount}) {
    return _VaccinationModel(
      currentCount: currentCount,
      data: data,
      matchCount: matchCount,
      page: page,
      perPage: perPage,
      totalCount: totalCount,
    );
  }

  VaccinationModel fromJson(Map<String, Object> json) {
    return VaccinationModel.fromJson(json);
  }
}

/// @nodoc
const $VaccinationModel = _$VaccinationModelTearOff();

/// @nodoc
mixin _$VaccinationModel {
  int get currentCount => throw _privateConstructorUsedError;
  List<Vaccination> get data => throw _privateConstructorUsedError;
  int get matchCount => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccinationModelCopyWith<VaccinationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccinationModelCopyWith<$Res> {
  factory $VaccinationModelCopyWith(
          VaccinationModel value, $Res Function(VaccinationModel) then) =
      _$VaccinationModelCopyWithImpl<$Res>;
  $Res call(
      {int currentCount,
      List<Vaccination> data,
      int matchCount,
      int page,
      int perPage,
      int totalCount});
}

/// @nodoc
class _$VaccinationModelCopyWithImpl<$Res>
    implements $VaccinationModelCopyWith<$Res> {
  _$VaccinationModelCopyWithImpl(this._value, this._then);

  final VaccinationModel _value;
  // ignore: unused_field
  final $Res Function(VaccinationModel) _then;

  @override
  $Res call({
    Object? currentCount = freezed,
    Object? data = freezed,
    Object? matchCount = freezed,
    Object? page = freezed,
    Object? perPage = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_value.copyWith(
      currentCount: currentCount == freezed
          ? _value.currentCount
          : currentCount // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Vaccination>,
      matchCount: matchCount == freezed
          ? _value.matchCount
          : matchCount // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$VaccinationModelCopyWith<$Res>
    implements $VaccinationModelCopyWith<$Res> {
  factory _$VaccinationModelCopyWith(
          _VaccinationModel value, $Res Function(_VaccinationModel) then) =
      __$VaccinationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int currentCount,
      List<Vaccination> data,
      int matchCount,
      int page,
      int perPage,
      int totalCount});
}

/// @nodoc
class __$VaccinationModelCopyWithImpl<$Res>
    extends _$VaccinationModelCopyWithImpl<$Res>
    implements _$VaccinationModelCopyWith<$Res> {
  __$VaccinationModelCopyWithImpl(
      _VaccinationModel _value, $Res Function(_VaccinationModel) _then)
      : super(_value, (v) => _then(v as _VaccinationModel));

  @override
  _VaccinationModel get _value => super._value as _VaccinationModel;

  @override
  $Res call({
    Object? currentCount = freezed,
    Object? data = freezed,
    Object? matchCount = freezed,
    Object? page = freezed,
    Object? perPage = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_VaccinationModel(
      currentCount: currentCount == freezed
          ? _value.currentCount
          : currentCount // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Vaccination>,
      matchCount: matchCount == freezed
          ? _value.matchCount
          : matchCount // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_VaccinationModel implements _VaccinationModel {
  _$_VaccinationModel(
      {required this.currentCount,
      required this.data,
      required this.matchCount,
      required this.page,
      required this.perPage,
      required this.totalCount});

  factory _$_VaccinationModel.fromJson(Map<String, dynamic> json) =>
      _$_$_VaccinationModelFromJson(json);

  @override
  final int currentCount;
  @override
  final List<Vaccination> data;
  @override
  final int matchCount;
  @override
  final int page;
  @override
  final int perPage;
  @override
  final int totalCount;

  @override
  String toString() {
    return 'VaccinationModel(currentCount: $currentCount, data: $data, matchCount: $matchCount, page: $page, perPage: $perPage, totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccinationModel &&
            (identical(other.currentCount, currentCount) ||
                const DeepCollectionEquality()
                    .equals(other.currentCount, currentCount)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.matchCount, matchCount) ||
                const DeepCollectionEquality()
                    .equals(other.matchCount, matchCount)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.perPage, perPage) ||
                const DeepCollectionEquality()
                    .equals(other.perPage, perPage)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentCount) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(matchCount) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(perPage) ^
      const DeepCollectionEquality().hash(totalCount);

  @JsonKey(ignore: true)
  @override
  _$VaccinationModelCopyWith<_VaccinationModel> get copyWith =>
      __$VaccinationModelCopyWithImpl<_VaccinationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VaccinationModelToJson(this);
  }
}

abstract class _VaccinationModel implements VaccinationModel {
  factory _VaccinationModel(
      {required int currentCount,
      required List<Vaccination> data,
      required int matchCount,
      required int page,
      required int perPage,
      required int totalCount}) = _$_VaccinationModel;

  factory _VaccinationModel.fromJson(Map<String, dynamic> json) =
      _$_VaccinationModel.fromJson;

  @override
  int get currentCount => throw _privateConstructorUsedError;
  @override
  List<Vaccination> get data => throw _privateConstructorUsedError;
  @override
  int get matchCount => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  int get perPage => throw _privateConstructorUsedError;
  @override
  int get totalCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VaccinationModelCopyWith<_VaccinationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Vaccination _$VaccinationFromJson(Map<String, dynamic> json) {
  return _Vaccination.fromJson(json);
}

/// @nodoc
class _$VaccinationTearOff {
  const _$VaccinationTearOff();

  _Vaccination call(
      {required int accumulatedFirstCnt,
      required int accumulatedSecondCnt,
      required DateTime baseDate,
      required int firstCnt,
      required int secondCnt,
      required String sido,
      required int totalFirstCnt,
      required int totalSecondCnt}) {
    return _Vaccination(
      accumulatedFirstCnt: accumulatedFirstCnt,
      accumulatedSecondCnt: accumulatedSecondCnt,
      baseDate: baseDate,
      firstCnt: firstCnt,
      secondCnt: secondCnt,
      sido: sido,
      totalFirstCnt: totalFirstCnt,
      totalSecondCnt: totalSecondCnt,
    );
  }

  Vaccination fromJson(Map<String, Object> json) {
    return Vaccination.fromJson(json);
  }
}

/// @nodoc
const $Vaccination = _$VaccinationTearOff();

/// @nodoc
mixin _$Vaccination {
  int get accumulatedFirstCnt => throw _privateConstructorUsedError;
  int get accumulatedSecondCnt => throw _privateConstructorUsedError;
  DateTime get baseDate => throw _privateConstructorUsedError;
  int get firstCnt => throw _privateConstructorUsedError;
  int get secondCnt => throw _privateConstructorUsedError;
  String get sido => throw _privateConstructorUsedError;
  int get totalFirstCnt => throw _privateConstructorUsedError;
  int get totalSecondCnt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccinationCopyWith<Vaccination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccinationCopyWith<$Res> {
  factory $VaccinationCopyWith(
          Vaccination value, $Res Function(Vaccination) then) =
      _$VaccinationCopyWithImpl<$Res>;
  $Res call(
      {int accumulatedFirstCnt,
      int accumulatedSecondCnt,
      DateTime baseDate,
      int firstCnt,
      int secondCnt,
      String sido,
      int totalFirstCnt,
      int totalSecondCnt});
}

/// @nodoc
class _$VaccinationCopyWithImpl<$Res> implements $VaccinationCopyWith<$Res> {
  _$VaccinationCopyWithImpl(this._value, this._then);

  final Vaccination _value;
  // ignore: unused_field
  final $Res Function(Vaccination) _then;

  @override
  $Res call({
    Object? accumulatedFirstCnt = freezed,
    Object? accumulatedSecondCnt = freezed,
    Object? baseDate = freezed,
    Object? firstCnt = freezed,
    Object? secondCnt = freezed,
    Object? sido = freezed,
    Object? totalFirstCnt = freezed,
    Object? totalSecondCnt = freezed,
  }) {
    return _then(_value.copyWith(
      accumulatedFirstCnt: accumulatedFirstCnt == freezed
          ? _value.accumulatedFirstCnt
          : accumulatedFirstCnt // ignore: cast_nullable_to_non_nullable
              as int,
      accumulatedSecondCnt: accumulatedSecondCnt == freezed
          ? _value.accumulatedSecondCnt
          : accumulatedSecondCnt // ignore: cast_nullable_to_non_nullable
              as int,
      baseDate: baseDate == freezed
          ? _value.baseDate
          : baseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      firstCnt: firstCnt == freezed
          ? _value.firstCnt
          : firstCnt // ignore: cast_nullable_to_non_nullable
              as int,
      secondCnt: secondCnt == freezed
          ? _value.secondCnt
          : secondCnt // ignore: cast_nullable_to_non_nullable
              as int,
      sido: sido == freezed
          ? _value.sido
          : sido // ignore: cast_nullable_to_non_nullable
              as String,
      totalFirstCnt: totalFirstCnt == freezed
          ? _value.totalFirstCnt
          : totalFirstCnt // ignore: cast_nullable_to_non_nullable
              as int,
      totalSecondCnt: totalSecondCnt == freezed
          ? _value.totalSecondCnt
          : totalSecondCnt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$VaccinationCopyWith<$Res>
    implements $VaccinationCopyWith<$Res> {
  factory _$VaccinationCopyWith(
          _Vaccination value, $Res Function(_Vaccination) then) =
      __$VaccinationCopyWithImpl<$Res>;
  @override
  $Res call(
      {int accumulatedFirstCnt,
      int accumulatedSecondCnt,
      DateTime baseDate,
      int firstCnt,
      int secondCnt,
      String sido,
      int totalFirstCnt,
      int totalSecondCnt});
}

/// @nodoc
class __$VaccinationCopyWithImpl<$Res> extends _$VaccinationCopyWithImpl<$Res>
    implements _$VaccinationCopyWith<$Res> {
  __$VaccinationCopyWithImpl(
      _Vaccination _value, $Res Function(_Vaccination) _then)
      : super(_value, (v) => _then(v as _Vaccination));

  @override
  _Vaccination get _value => super._value as _Vaccination;

  @override
  $Res call({
    Object? accumulatedFirstCnt = freezed,
    Object? accumulatedSecondCnt = freezed,
    Object? baseDate = freezed,
    Object? firstCnt = freezed,
    Object? secondCnt = freezed,
    Object? sido = freezed,
    Object? totalFirstCnt = freezed,
    Object? totalSecondCnt = freezed,
  }) {
    return _then(_Vaccination(
      accumulatedFirstCnt: accumulatedFirstCnt == freezed
          ? _value.accumulatedFirstCnt
          : accumulatedFirstCnt // ignore: cast_nullable_to_non_nullable
              as int,
      accumulatedSecondCnt: accumulatedSecondCnt == freezed
          ? _value.accumulatedSecondCnt
          : accumulatedSecondCnt // ignore: cast_nullable_to_non_nullable
              as int,
      baseDate: baseDate == freezed
          ? _value.baseDate
          : baseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      firstCnt: firstCnt == freezed
          ? _value.firstCnt
          : firstCnt // ignore: cast_nullable_to_non_nullable
              as int,
      secondCnt: secondCnt == freezed
          ? _value.secondCnt
          : secondCnt // ignore: cast_nullable_to_non_nullable
              as int,
      sido: sido == freezed
          ? _value.sido
          : sido // ignore: cast_nullable_to_non_nullable
              as String,
      totalFirstCnt: totalFirstCnt == freezed
          ? _value.totalFirstCnt
          : totalFirstCnt // ignore: cast_nullable_to_non_nullable
              as int,
      totalSecondCnt: totalSecondCnt == freezed
          ? _value.totalSecondCnt
          : totalSecondCnt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Vaccination implements _Vaccination {
  _$_Vaccination(
      {required this.accumulatedFirstCnt,
      required this.accumulatedSecondCnt,
      required this.baseDate,
      required this.firstCnt,
      required this.secondCnt,
      required this.sido,
      required this.totalFirstCnt,
      required this.totalSecondCnt});

  factory _$_Vaccination.fromJson(Map<String, dynamic> json) =>
      _$_$_VaccinationFromJson(json);

  @override
  final int accumulatedFirstCnt;
  @override
  final int accumulatedSecondCnt;
  @override
  final DateTime baseDate;
  @override
  final int firstCnt;
  @override
  final int secondCnt;
  @override
  final String sido;
  @override
  final int totalFirstCnt;
  @override
  final int totalSecondCnt;

  @override
  String toString() {
    return 'Vaccination(accumulatedFirstCnt: $accumulatedFirstCnt, accumulatedSecondCnt: $accumulatedSecondCnt, baseDate: $baseDate, firstCnt: $firstCnt, secondCnt: $secondCnt, sido: $sido, totalFirstCnt: $totalFirstCnt, totalSecondCnt: $totalSecondCnt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Vaccination &&
            (identical(other.accumulatedFirstCnt, accumulatedFirstCnt) ||
                const DeepCollectionEquality()
                    .equals(other.accumulatedFirstCnt, accumulatedFirstCnt)) &&
            (identical(other.accumulatedSecondCnt, accumulatedSecondCnt) ||
                const DeepCollectionEquality().equals(
                    other.accumulatedSecondCnt, accumulatedSecondCnt)) &&
            (identical(other.baseDate, baseDate) ||
                const DeepCollectionEquality()
                    .equals(other.baseDate, baseDate)) &&
            (identical(other.firstCnt, firstCnt) ||
                const DeepCollectionEquality()
                    .equals(other.firstCnt, firstCnt)) &&
            (identical(other.secondCnt, secondCnt) ||
                const DeepCollectionEquality()
                    .equals(other.secondCnt, secondCnt)) &&
            (identical(other.sido, sido) ||
                const DeepCollectionEquality().equals(other.sido, sido)) &&
            (identical(other.totalFirstCnt, totalFirstCnt) ||
                const DeepCollectionEquality()
                    .equals(other.totalFirstCnt, totalFirstCnt)) &&
            (identical(other.totalSecondCnt, totalSecondCnt) ||
                const DeepCollectionEquality()
                    .equals(other.totalSecondCnt, totalSecondCnt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accumulatedFirstCnt) ^
      const DeepCollectionEquality().hash(accumulatedSecondCnt) ^
      const DeepCollectionEquality().hash(baseDate) ^
      const DeepCollectionEquality().hash(firstCnt) ^
      const DeepCollectionEquality().hash(secondCnt) ^
      const DeepCollectionEquality().hash(sido) ^
      const DeepCollectionEquality().hash(totalFirstCnt) ^
      const DeepCollectionEquality().hash(totalSecondCnt);

  @JsonKey(ignore: true)
  @override
  _$VaccinationCopyWith<_Vaccination> get copyWith =>
      __$VaccinationCopyWithImpl<_Vaccination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VaccinationToJson(this);
  }
}

abstract class _Vaccination implements Vaccination {
  factory _Vaccination(
      {required int accumulatedFirstCnt,
      required int accumulatedSecondCnt,
      required DateTime baseDate,
      required int firstCnt,
      required int secondCnt,
      required String sido,
      required int totalFirstCnt,
      required int totalSecondCnt}) = _$_Vaccination;

  factory _Vaccination.fromJson(Map<String, dynamic> json) =
      _$_Vaccination.fromJson;

  @override
  int get accumulatedFirstCnt => throw _privateConstructorUsedError;
  @override
  int get accumulatedSecondCnt => throw _privateConstructorUsedError;
  @override
  DateTime get baseDate => throw _privateConstructorUsedError;
  @override
  int get firstCnt => throw _privateConstructorUsedError;
  @override
  int get secondCnt => throw _privateConstructorUsedError;
  @override
  String get sido => throw _privateConstructorUsedError;
  @override
  int get totalFirstCnt => throw _privateConstructorUsedError;
  @override
  int get totalSecondCnt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VaccinationCopyWith<_Vaccination> get copyWith =>
      throw _privateConstructorUsedError;
}
