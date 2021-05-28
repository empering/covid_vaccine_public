import 'package:covid_vaccine/core/data/api/api_provider.dart';
import 'package:covid_vaccine/core/models/entity/institution_model.dart';

class InstitutionRepository {
  InstitutionRepository({required this.provider});

  final ApiProvider<List<InstitutionModel>> provider;

  Future<List<InstitutionModel>> fetchData({
    String? sidcod,
    String? sggcd,
    String? orgnm,
  }) async {
    Map<String, dynamic> query = {};

    query['sidocd'] = sidcod ?? '';
    query['sggcd'] = sggcd ?? '';
    query['orgnm'] = orgnm ?? '';

    final institution = await provider.fetchData("", query: query);

    if (institution.status.hasError) {
      return Future.error(institution.statusText!);
    } else {
      return institution.body!;
    }
  }
}
