import 'package:covid_vaccine/pages/home/domain/entity/vaccination_model.dart';
import 'package:get/get.dart';

// ignore: one_member_abstracts
abstract class IHomeProvider {
  Future<Response<VaccinationModel>> getVaccinaion(String path,
      {Map<String, dynamic>? query});
}

class HomeProvider extends GetConnect implements IHomeProvider {
  @override
  void onInit() {
    httpClient.defaultDecoder =
        (val) => VaccinationModel.fromJson(val as Map<String, dynamic>);
    httpClient.baseUrl = 'https://api.odcloud.kr/api/15077756/v1';
  }

  @override
  Future<Response<VaccinationModel>> getVaccinaion(String path,
          {Map<String, dynamic>? query}) =>
      get(path, query: query);
}
