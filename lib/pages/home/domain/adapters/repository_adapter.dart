import 'package:covid_vaccine/pages/home/domain/entity/vaccination_model.dart';

// ignore: one_member_abstracts
abstract class IHomeRepository {
  Future<VaccinationModel> getVaccination();
}
