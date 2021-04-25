import 'package:covid_vaccine/core/data/api/api_provider.dart';
import 'package:covid_vaccine/core/data/repository/app_repository.dart';
import 'package:covid_vaccine/core/models/entity/vaccination_model.dart';

class VaccinationRepository implements AppRepository<VaccinationModel> {
  VaccinationRepository({required this.provider});

  final ApiProvider<VaccinationModel> provider;

  @override
  Future<VaccinationModel> fetchData() async {
    Map<String, dynamic> query = {};

    query['serviceKey'] = provider.apiKey;
    // query['cond[sido::EQ]'] = '전국';
    query['perPage'] = '50';
    query['cond[baseDate::GTE]'] = DateTime.now()
            .toUtc()
            .add(Duration(hours: 9))
            .add(Duration(days: -1))
            .toString()
            .split(' ')[0] +
        ' 00:00:00';
    query['cond[baseDate::LTE]'] = DateTime.now()
            .toUtc()
            .add(Duration(hours: 9))
            .toString()
            .split(' ')[0] +
        ' 00:00:00';

    final vaccination = await provider.fetchData("/vaccine-stat", query: query);

    if (vaccination.status.hasError) {
      return Future.error(vaccination.statusText!);
    } else {
      return vaccination.body!;
    }
  }
}
