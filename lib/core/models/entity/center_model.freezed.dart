// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'center_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CenterModel _$CenterModelFromJson(Map<String, dynamic> json) {
  return _CenterModel.fromJson(json);
}

/// @nodoc
class _$CenterModelTearOff {
  const _$CenterModelTearOff();

  _CenterModel call(
      {required int currentCount,
      required List<VaccinationCenter> data,
      required int matchCount,
      required int page,
      required int perPage,
      required int totalCount}) {
    return _CenterModel(
      currentCount: currentCount,
      data: data,
      matchCount: matchCount,
      page: page,
      perPage: perPage,
      totalCount: totalCount,
    );
  }

  CenterModel fromJson(Map<String, Object> json) {
    return CenterModel.fromJson(json);
  }
}

/// @nodoc
const $CenterModel = _$CenterModelTearOff();

/// @nodoc
mixin _$CenterModel {
  int get currentCount => throw _privateConstructorUsedError;
  List<VaccinationCenter> get data => throw _privateConstructorUsedError;
  int get matchCount => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CenterModelCopyWith<CenterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CenterModelCopyWith<$Res> {
  factory $CenterModelCopyWith(
          CenterModel value, $Res Function(CenterModel) then) =
      _$CenterModelCopyWithImpl<$Res>;
  $Res call(
      {int currentCount,
      List<VaccinationCenter> data,
      int matchCount,
      int page,
      int perPage,
      int totalCount});
}

/// @nodoc
class _$CenterModelCopyWithImpl<$Res> implements $CenterModelCopyWith<$Res> {
  _$CenterModelCopyWithImpl(this._value, this._then);

  final CenterModel _value;
  // ignore: unused_field
  final $Res Function(CenterModel) _then;

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
              as List<VaccinationCenter>,
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
abstract class _$CenterModelCopyWith<$Res>
    implements $CenterModelCopyWith<$Res> {
  factory _$CenterModelCopyWith(
          _CenterModel value, $Res Function(_CenterModel) then) =
      __$CenterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int currentCount,
      List<VaccinationCenter> data,
      int matchCount,
      int page,
      int perPage,
      int totalCount});
}

/// @nodoc
class __$CenterModelCopyWithImpl<$Res> extends _$CenterModelCopyWithImpl<$Res>
    implements _$CenterModelCopyWith<$Res> {
  __$CenterModelCopyWithImpl(
      _CenterModel _value, $Res Function(_CenterModel) _then)
      : super(_value, (v) => _then(v as _CenterModel));

  @override
  _CenterModel get _value => super._value as _CenterModel;

  @override
  $Res call({
    Object? currentCount = freezed,
    Object? data = freezed,
    Object? matchCount = freezed,
    Object? page = freezed,
    Object? perPage = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_CenterModel(
      currentCount: currentCount == freezed
          ? _value.currentCount
          : currentCount // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<VaccinationCenter>,
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
@JsonSerializable()
class _$_CenterModel implements _CenterModel {
  _$_CenterModel(
      {required this.currentCount,
      required this.data,
      required this.matchCount,
      required this.page,
      required this.perPage,
      required this.totalCount});

  factory _$_CenterModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CenterModelFromJson(json);

  @override
  final int currentCount;
  @override
  final List<VaccinationCenter> data;
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
    return 'CenterModel(currentCount: $currentCount, data: $data, matchCount: $matchCount, page: $page, perPage: $perPage, totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CenterModel &&
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
  _$CenterModelCopyWith<_CenterModel> get copyWith =>
      __$CenterModelCopyWithImpl<_CenterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CenterModelToJson(this);
  }
}

abstract class _CenterModel implements CenterModel {
  factory _CenterModel(
      {required int currentCount,
      required List<VaccinationCenter> data,
      required int matchCount,
      required int page,
      required int perPage,
      required int totalCount}) = _$_CenterModel;

  factory _CenterModel.fromJson(Map<String, dynamic> json) =
      _$_CenterModel.fromJson;

  @override
  int get currentCount => throw _privateConstructorUsedError;
  @override
  List<VaccinationCenter> get data => throw _privateConstructorUsedError;
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
  _$CenterModelCopyWith<_CenterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

VaccinationCenter _$VaccinationCenterFromJson(Map<String, dynamic> json) {
  return _VaccinationCenter.fromJson(json);
}

/// @nodoc
class _$VaccinationCenterTearOff {
  const _$VaccinationCenterTearOff();

  _VaccinationCenter call(
      {required String address,
      required String centerName,
      required CenterType centerType,
      required String facilityName,
      required int id,
      required String lat,
      required String lng,
      required String org,
      required String sido,
      required String sigungu,
      required String zipCode}) {
    return _VaccinationCenter(
      address: address,
      centerName: centerName,
      centerType: centerType,
      facilityName: facilityName,
      id: id,
      lat: lat,
      lng: lng,
      org: org,
      sido: sido,
      sigungu: sigungu,
      zipCode: zipCode,
    );
  }

  VaccinationCenter fromJson(Map<String, Object> json) {
    return VaccinationCenter.fromJson(json);
  }
}

/// @nodoc
const $VaccinationCenter = _$VaccinationCenterTearOff();

/// @nodoc
mixin _$VaccinationCenter {
  String get address => throw _privateConstructorUsedError;
  String get centerName => throw _privateConstructorUsedError;
  CenterType get centerType => throw _privateConstructorUsedError;
  String get facilityName => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;
  String get org => throw _privateConstructorUsedError;
  String get sido => throw _privateConstructorUsedError;
  String get sigungu => throw _privateConstructorUsedError;
  String get zipCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccinationCenterCopyWith<VaccinationCenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccinationCenterCopyWith<$Res> {
  factory $VaccinationCenterCopyWith(
          VaccinationCenter value, $Res Function(VaccinationCenter) then) =
      _$VaccinationCenterCopyWithImpl<$Res>;
  $Res call(
      {String address,
      String centerName,
      CenterType centerType,
      String facilityName,
      int id,
      String lat,
      String lng,
      String org,
      String sido,
      String sigungu,
      String zipCode});
}

/// @nodoc
class _$VaccinationCenterCopyWithImpl<$Res>
    implements $VaccinationCenterCopyWith<$Res> {
  _$VaccinationCenterCopyWithImpl(this._value, this._then);

  final VaccinationCenter _value;
  // ignore: unused_field
  final $Res Function(VaccinationCenter) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? centerName = freezed,
    Object? centerType = freezed,
    Object? facilityName = freezed,
    Object? id = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? org = freezed,
    Object? sido = freezed,
    Object? sigungu = freezed,
    Object? zipCode = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      centerName: centerName == freezed
          ? _value.centerName
          : centerName // ignore: cast_nullable_to_non_nullable
              as String,
      centerType: centerType == freezed
          ? _value.centerType
          : centerType // ignore: cast_nullable_to_non_nullable
              as CenterType,
      facilityName: facilityName == freezed
          ? _value.facilityName
          : facilityName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      org: org == freezed
          ? _value.org
          : org // ignore: cast_nullable_to_non_nullable
              as String,
      sido: sido == freezed
          ? _value.sido
          : sido // ignore: cast_nullable_to_non_nullable
              as String,
      sigungu: sigungu == freezed
          ? _value.sigungu
          : sigungu // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: zipCode == freezed
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VaccinationCenterCopyWith<$Res>
    implements $VaccinationCenterCopyWith<$Res> {
  factory _$VaccinationCenterCopyWith(
          _VaccinationCenter value, $Res Function(_VaccinationCenter) then) =
      __$VaccinationCenterCopyWithImpl<$Res>;
  @override
  $Res call(
      {String address,
      String centerName,
      CenterType centerType,
      String facilityName,
      int id,
      String lat,
      String lng,
      String org,
      String sido,
      String sigungu,
      String zipCode});
}

/// @nodoc
class __$VaccinationCenterCopyWithImpl<$Res>
    extends _$VaccinationCenterCopyWithImpl<$Res>
    implements _$VaccinationCenterCopyWith<$Res> {
  __$VaccinationCenterCopyWithImpl(
      _VaccinationCenter _value, $Res Function(_VaccinationCenter) _then)
      : super(_value, (v) => _then(v as _VaccinationCenter));

  @override
  _VaccinationCenter get _value => super._value as _VaccinationCenter;

  @override
  $Res call({
    Object? address = freezed,
    Object? centerName = freezed,
    Object? centerType = freezed,
    Object? facilityName = freezed,
    Object? id = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? org = freezed,
    Object? sido = freezed,
    Object? sigungu = freezed,
    Object? zipCode = freezed,
  }) {
    return _then(_VaccinationCenter(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      centerName: centerName == freezed
          ? _value.centerName
          : centerName // ignore: cast_nullable_to_non_nullable
              as String,
      centerType: centerType == freezed
          ? _value.centerType
          : centerType // ignore: cast_nullable_to_non_nullable
              as CenterType,
      facilityName: facilityName == freezed
          ? _value.facilityName
          : facilityName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      org: org == freezed
          ? _value.org
          : org // ignore: cast_nullable_to_non_nullable
              as String,
      sido: sido == freezed
          ? _value.sido
          : sido // ignore: cast_nullable_to_non_nullable
              as String,
      sigungu: sigungu == freezed
          ? _value.sigungu
          : sigungu // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: zipCode == freezed
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaccinationCenter extends _VaccinationCenter {
  _$_VaccinationCenter(
      {required this.address,
      required this.centerName,
      required this.centerType,
      required this.facilityName,
      required this.id,
      required this.lat,
      required this.lng,
      required this.org,
      required this.sido,
      required this.sigungu,
      required this.zipCode})
      : super._();

  factory _$_VaccinationCenter.fromJson(Map<String, dynamic> json) =>
      _$_$_VaccinationCenterFromJson(json);

  @override
  final String address;
  @override
  final String centerName;
  @override
  final CenterType centerType;
  @override
  final String facilityName;
  @override
  final int id;
  @override
  final String lat;
  @override
  final String lng;
  @override
  final String org;
  @override
  final String sido;
  @override
  final String sigungu;
  @override
  final String zipCode;

  @override
  String toString() {
    return 'VaccinationCenter(address: $address, centerName: $centerName, centerType: $centerType, facilityName: $facilityName, id: $id, lat: $lat, lng: $lng, org: $org, sido: $sido, sigungu: $sigungu, zipCode: $zipCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccinationCenter &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.centerName, centerName) ||
                const DeepCollectionEquality()
                    .equals(other.centerName, centerName)) &&
            (identical(other.centerType, centerType) ||
                const DeepCollectionEquality()
                    .equals(other.centerType, centerType)) &&
            (identical(other.facilityName, facilityName) ||
                const DeepCollectionEquality()
                    .equals(other.facilityName, facilityName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)) &&
            (identical(other.org, org) ||
                const DeepCollectionEquality().equals(other.org, org)) &&
            (identical(other.sido, sido) ||
                const DeepCollectionEquality().equals(other.sido, sido)) &&
            (identical(other.sigungu, sigungu) ||
                const DeepCollectionEquality()
                    .equals(other.sigungu, sigungu)) &&
            (identical(other.zipCode, zipCode) ||
                const DeepCollectionEquality().equals(other.zipCode, zipCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(centerName) ^
      const DeepCollectionEquality().hash(centerType) ^
      const DeepCollectionEquality().hash(facilityName) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng) ^
      const DeepCollectionEquality().hash(org) ^
      const DeepCollectionEquality().hash(sido) ^
      const DeepCollectionEquality().hash(sigungu) ^
      const DeepCollectionEquality().hash(zipCode);

  @JsonKey(ignore: true)
  @override
  _$VaccinationCenterCopyWith<_VaccinationCenter> get copyWith =>
      __$VaccinationCenterCopyWithImpl<_VaccinationCenter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VaccinationCenterToJson(this);
  }
}

abstract class _VaccinationCenter extends VaccinationCenter {
  factory _VaccinationCenter(
      {required String address,
      required String centerName,
      required CenterType centerType,
      required String facilityName,
      required int id,
      required String lat,
      required String lng,
      required String org,
      required String sido,
      required String sigungu,
      required String zipCode}) = _$_VaccinationCenter;
  _VaccinationCenter._() : super._();

  factory _VaccinationCenter.fromJson(Map<String, dynamic> json) =
      _$_VaccinationCenter.fromJson;

  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get centerName => throw _privateConstructorUsedError;
  @override
  CenterType get centerType => throw _privateConstructorUsedError;
  @override
  String get facilityName => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get lat => throw _privateConstructorUsedError;
  @override
  String get lng => throw _privateConstructorUsedError;
  @override
  String get org => throw _privateConstructorUsedError;
  @override
  String get sido => throw _privateConstructorUsedError;
  @override
  String get sigungu => throw _privateConstructorUsedError;
  @override
  String get zipCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VaccinationCenterCopyWith<_VaccinationCenter> get copyWith =>
      throw _privateConstructorUsedError;
}
