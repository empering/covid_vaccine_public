import 'package:covid_vaccine/core/data/api/api_provider.dart';
import 'package:covid_vaccine/core/models/entity/institution_sigugun_model.dart';

class InstitutionSigugunRepository {
  InstitutionSigugunRepository({required this.provider});

  final ApiProvider<List<InstitutionSigugunModel>> provider;

  Future<List<InstitutionSigugunModel>> fetchData({String? sidcod}) async {
    Map<String, dynamic> query = {};

    query['SIDCOD'] = sidcod ?? '';

    final sigugun = await provider.fetchData("", query: query);

    if (sigugun.status.hasError) {
      return Future.error(sigugun.statusText!);
    } else {
      return sigugun.body!;
    }
  }
}
