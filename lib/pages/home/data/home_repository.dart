import 'package:covid_vaccine/pages/home/domain/entity/vaccination_model.dart';

import '../domain/adapters/repository_adapter.dart';
import 'home_api_provider.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository({required this.provider});

  final IHomeProvider provider;

  getServiceKey() {
    return 'Zp+l7+1MaKoJlqSFrS31s7U0vpKF2OWh117U/CEsp6yjXnK4VlL0jyeGU58oyqnUkjjEI3XIbyE/FTROydGGUQ==';
  }

  @override
  Future<VaccinationModel> getVaccination() async {
    Map<String, dynamic> query = {};

    query['serviceKey'] = getServiceKey();
    query['cond[sido::EQ]'] = '전국';
    query['cond[baseDate::EQ]'] = '2021-04-22 00:00:00';

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
