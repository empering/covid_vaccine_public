import 'dart:convert';

import 'package:covid_vaccine/core/data/api/api_provider.dart';
import 'package:covid_vaccine/core/models/entity/institution_model.dart';
import 'package:get/get.dart';
import 'package:html_unescape/html_unescape.dart';

class InstitutionApiProvider extends GetConnect
    implements ApiProvider<List<InstitutionModel>> {
  late final _apiKey;

  @override
  void onInit() {
    _apiKey = '';
    httpClient.defaultDecoder = (responseBody) {
      var htmlUnescape = HtmlUnescape();
      return (jsonDecode(htmlUnescape.convert(responseBody)) as List<dynamic>)
          .map((map) => InstitutionModel.fromJson(map as Map<String, dynamic>))
          .toList();
    };
    // param : sidocd=41&sggcd=41820&orgnm=늘
    httpClient.baseUrl =
        'https://ncvr.kdca.go.kr/cobk/rsrv/web/getVcnRsrvMdinLstAjax.do';
  }

  @override
  String get apiKey => _apiKey;

  @override
  Future<Response<List<InstitutionModel>>> fetchData(String apiPath,
          {Map<String, dynamic>? query}) =>
      get(apiPath, query: query);
}
