import 'package:covid_vaccine/core/data/api/api_provider.dart';
import 'package:covid_vaccine/core/data/repository/app_repository.dart';
import 'package:covid_vaccine/core/models/entity/center_model.dart';

class CenterRepository implements AppRepository<CenterModel> {
  CenterRepository({required this.provider});

  final ApiProvider<CenterModel> provider;

  @override
  Future<CenterModel> fetchData() async {
    Map<String, dynamic> query = {};

    query['serviceKey'] = provider.apiKey;
    query['perPage'] = '500';

    final center = await provider.fetchData("/centers", query: query);

    if (center.status.hasError) {
      return Future.error(center.statusText!);
    } else {
      return center.body!;
    }
  }
}
