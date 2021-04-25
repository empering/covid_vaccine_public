import 'package:covid_vaccine/core/data/api/api_provider.dart';
import 'package:covid_vaccine/core/models/entity/vaccination_model.dart';
import 'package:get/get.dart';

class VaccinationApiProvider extends GetConnect
    implements ApiProvider<VaccinationModel> {
  late final _apiKey;

  @override
  void onInit() {
    _apiKey =
        'Zp+l7+1MaKoJlqSFrS31s7U0vpKF2OWh117U/CEsp6yjXnK4VlL0jyeGU58oyqnUkjjEI3XIbyE/FTROydGGUQ==';
    httpClient.defaultDecoder = (responseBody) =>
        VaccinationModel.fromJson(responseBody as Map<String, dynamic>);
    httpClient.baseUrl = 'https://api.odcloud.kr/api/15077756/v1';
  }

  @override
  String get apiKey => _apiKey;

  @override
  Future<Response<VaccinationModel>> fetchData(String apiPath,
          {Map<String, dynamic>? query}) =>
      get(apiPath, query: query);
}
