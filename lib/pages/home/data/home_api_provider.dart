import 'package:covid_vaccine/pages/home/domain/entity/vaccination_model.dart';
import 'package:get/get.dart';

// ignore: one_member_abstracts
abstract class IHomeProvider {
  Future<Response<VaccinationModel>> getVaccinaion(String path,
      {Map<String, dynamic>? query});

  String get apiKey;
}

class HomeProvider extends GetConnect implements IHomeProvider {
  final _apiKey =
      'Zp+l7+1MaKoJlqSFrS31s7U0vpKF2OWh117U/CEsp6yjXnK4VlL0jyeGU58oyqnUkjjEI3XIbyE/FTROydGGUQ==';

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

  String get apiKey => _apiKey;
}
