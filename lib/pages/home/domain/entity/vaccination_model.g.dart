// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaccinationModel _$_$_VaccinationModelFromJson(Map<String, dynamic> json) {
  return _$_VaccinationModel(
    currentCount: json['currentCount'] as int,
    data: (json['data'] as List<dynamic>)
        .map((e) => Vaccination.fromJson(e as Map<String, dynamic>))
        .toList(),
    matchCount: json['matchCount'] as int,
    page: json['page'] as int,
    perPage: json['perPage'] as int,
    totalCount: json['totalCount'] as int,
  );
}

Map<String, dynamic> _$_$_VaccinationModelToJson(
        _$_VaccinationModel instance) =>
    <String, dynamic>{
      'currentCount': instance.currentCount,
      'data': instance.data,
      'matchCount': instance.matchCount,
      'page': instance.page,
      'perPage': instance.perPage,
      'totalCount': instance.totalCount,
    };

_$_Vaccination _$_$_VaccinationFromJson(Map<String, dynamic> json) {
  return _$_Vaccination(
    accumulatedFirstCnt: json['accumulatedFirstCnt'] as int,
    accumulatedSecondCnt: json['accumulatedSecondCnt'] as int,
    baseDate: DateTime.parse(json['baseDate'] as String),
    firstCnt: json['firstCnt'] as int,
    secondCnt: json['secondCnt'] as int,
    sido: json['sido'] as String,
    totalFirstCnt: json['totalFirstCnt'] as int,
    totalSecondCnt: json['totalSecondCnt'] as int,
  );
}

Map<String, dynamic> _$_$_VaccinationToJson(_$_Vaccination instance) =>
    <String, dynamic>{
      'accumulatedFirstCnt': instance.accumulatedFirstCnt,
      'accumulatedSecondCnt': instance.accumulatedSecondCnt,
      'baseDate': instance.baseDate.toIso8601String(),
      'firstCnt': instance.firstCnt,
      'secondCnt': instance.secondCnt,
      'sido': instance.sido,
      'totalFirstCnt': instance.totalFirstCnt,
      'totalSecondCnt': instance.totalSecondCnt,
    };
