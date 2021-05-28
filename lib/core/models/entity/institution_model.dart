import 'package:freezed_annotation/freezed_annotation.dart';

part 'institution_model.freezed.dart';
part 'institution_model.g.dart';

@freezed
class InstitutionModel with _$InstitutionModel {
  const factory InstitutionModel({
    required String orgcd,
    required String orgnm,
    required String orgZipaddr,
    required String orgTlno,
    required int pmdxeDctrCnt,
    String? lunchSttTm,
    String? lunchEndTm,
    String? monSttTm,
    String? monEndTm,
    String? tueSttTm,
    String? tueEndTm,
    String? wedSttTm,
    String? wedEndTm,
    String? thuSttTm,
    String? thuEndTm,
    String? friSttTm,
    String? friEndTm,
    String? satSttTm,
    String? satEndTm,
    String? sunSttTm,
    String? sunEndTm,
  }) = _InstitutionModel;

  factory InstitutionModel.fromJson(Map<String, dynamic> json) =>
      _$InstitutionModelFromJson(json);
}
