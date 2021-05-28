import 'package:freezed_annotation/freezed_annotation.dart';

part 'institution_sigugun_model.freezed.dart';
part 'institution_sigugun_model.g.dart';

@freezed
class InstitutionSigugunModel with _$InstitutionSigugunModel {
  const factory InstitutionSigugunModel({
    required String ditord,
    required String sidditnam,
  }) = _InstitutionSigugunModel;

  factory InstitutionSigugunModel.fromJson(Map<String, dynamic> json) =>
      _$InstitutionSigugunModelFromJson(json);
}
