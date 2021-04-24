import 'package:covid_vaccine/pages/home/domain/entity/vaccination_model.dart';

import '../domain/adapters/repository_adapter.dart';
import 'home_api_provider.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository({required this.provider});

  final IHomeProvider provider;

  @override
  Future<VaccinationModel> getVaccination() async {
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

    final vaccination =
        await provider.getVaccinaion("/vaccine-stat", query: query);

    if (vaccination.status.hasError) {
      print(vaccination.statusText);
      return Future.error(vaccination.statusText!);
    } else {
      print(vaccination.body);
      return vaccination.body!;
    }
  }
}
