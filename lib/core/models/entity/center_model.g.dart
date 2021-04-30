// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'center_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CenterModel _$_$_CenterModelFromJson(Map<String, dynamic> json) {
  return _$_CenterModel(
    currentCount: json['currentCount'] as int,
    data: (json['data'] as List<dynamic>)
        .map((e) => VaccinationCenter.fromJson(e as Map<String, dynamic>))
        .toList(),
    matchCount: json['matchCount'] as int,
    page: json['page'] as int,
    perPage: json['perPage'] as int,
    totalCount: json['totalCount'] as int,
  );
}

Map<String, dynamic> _$_$_CenterModelToJson(_$_CenterModel instance) =>
    <String, dynamic>{
      'currentCount': instance.currentCount,
      'data': instance.data,
      'matchCount': instance.matchCount,
      'page': instance.page,
      'perPage': instance.perPage,
      'totalCount': instance.totalCount,
    };

_$_VaccinationCenter _$_$_VaccinationCenterFromJson(Map<String, dynamic> json) {
  return _$_VaccinationCenter(
    address: json['address'] as String,
    centerName: json['centerName'] as String,
    centerType: _$enumDecode(_$CenterTypeEnumMap, json['centerType']),
    facilityName: json['facilityName'] as String,
    id: json['id'] as int,
    lat: json['lat'] as String,
    lng: json['lng'] as String,
    org: json['org'] as String,
    sido: json['sido'] as String,
    sigungu: json['sigungu'] as String,
    zipCode: json['zipCode'] as String,
  );
}

Map<String, dynamic> _$_$_VaccinationCenterToJson(
        _$_VaccinationCenter instance) =>
    <String, dynamic>{
      'address': instance.address,
      'centerName': instance.centerName,
      'centerType': _$CenterTypeEnumMap[instance.centerType],
      'facilityName': instance.facilityName,
      'id': instance.id,
      'lat': instance.lat,
      'lng': instance.lng,
      'org': instance.org,
      'sido': instance.sido,
      'sigungu': instance.sigungu,
      'zipCode': instance.zipCode,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$CenterTypeEnumMap = {
  CenterType.LOCAL: '지역',
  CenterType.CENTER: '중앙/권역',
};
