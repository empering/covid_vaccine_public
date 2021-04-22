import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccination_model.freezed.dart';
part 'vaccination_model.g.dart';

@freezed
class VaccinationModel with _$VaccinationModel {
  factory VaccinationModel({
    required int currentCount,
    required List<Vaccination> data,
    required int matchCount,
    required int page,
    required int perPage,
    required int totalCount,
  }) = _VaccinationModel;

  factory VaccinationModel.fromJson(Map<String, dynamic> json) =>
      _$VaccinationModelFromJson(json);
}

@freezed
class Vaccination with _$Vaccination {
  factory Vaccination({
    required int accumulatedFirstCnt,
    required int accumulatedSecondCnt,
    required DateTime baseDate,
    required int firstCnt,
    required int secondCnt,
    required String sido,
    required int totalFirstCnt,
    required int totalSecondCnt,
  }) = _Vaccination;

  factory Vaccination.fromJson(Map<String, dynamic> json) =>
      _$VaccinationFromJson(json);
}
