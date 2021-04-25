import 'package:covid_vaccine/core/data/api/api_provider.dart';
import 'package:covid_vaccine/core/data/api/vaccination_api_provider.dart';
import 'package:covid_vaccine/core/data/repository/app_repository.dart';
import 'package:covid_vaccine/core/data/repository/vaccination_repository.dart';
import 'package:covid_vaccine/core/models/entity/vaccination_model.dart';
import 'package:covid_vaccine/pages/vaccination/controllers/vaccination_controller.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiProvider<VaccinationModel>>(() => VaccinationApiProvider());
    Get.lazyPut<AppRepository<VaccinationModel>>(
        () => VaccinationRepository(provider: Get.find()));
    Get.lazyPut(() => VaccinationController(vaccinationRepository: Get.find()));
  }
}
