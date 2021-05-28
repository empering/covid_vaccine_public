import 'dart:convert';

import 'package:covid_vaccine/core/data/api/api_provider.dart';
import 'package:covid_vaccine/core/models/entity/institution_sigugun_model.dart';
import 'package:get/get.dart';

class InstitutionSigugunApiProvider extends GetConnect
    implements ApiProvider<List<InstitutionSigugunModel>> {
  late final _apiKey;

  @override
  void onInit() {
    _apiKey = '';
    httpClient.defaultDecoder = (responseBody) =>
        (jsonDecode(responseBody) as List<dynamic>)
            .map((map) =>
                InstitutionSigugunModel.fromJson(map as Map<String, dynamic>))
            .toList();
    // params : SIDCOD=31
    httpClient.baseUrl =
        'https://ncvr.kdca.go.kr/cobk/rsrv/web/getDitordLstAjax.do';
  }

  @override
  String get apiKey => _apiKey;

  @override
  Future<Response<List<InstitutionSigugunModel>>> fetchData(String apiPath,
          {Map<String, dynamic>? query}) =>
      get(apiPath, query: query);
}
