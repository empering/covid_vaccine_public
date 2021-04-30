import 'package:freezed_annotation/freezed_annotation.dart';

part 'center_model.freezed.dart';
part 'center_model.g.dart';

@freezed
class CenterModel with _$CenterModel {
  factory CenterModel({
    required int currentCount,
    required List<VaccinationCenter> data,
    required int matchCount,
    required int page,
    required int perPage,
    required int totalCount,
  }) = _CenterModel;

  factory CenterModel.fromJson(Map<String, dynamic> json) =>
      _$CenterModelFromJson(json);
}

@freezed
class VaccinationCenter with _$VaccinationCenter {
  factory VaccinationCenter({
    required String address,
    required String centerName,
    required CenterType centerType,
    required String facilityName,
    required int id,
    required String lat,
    required String lng,
    required String org,
    required String sido,
    required String sigungu,
    required String zipCode,
  }) = _VaccinationCenter;

  factory VaccinationCenter.fromJson(Map<String, dynamic> json) =>
      _$VaccinationCenterFromJson(json);
}

enum CenterType {
  @JsonValue('지역')
  LOCAL,
  @JsonValue('중앙/권역')
  CENTER,
}

final centerTypeValues =
    EnumValues({"지역": CenterType.LOCAL, "중앙/권역": CenterType.CENTER});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }

    return reverseMap!;
  }
}
