import 'package:covid_vaccine/core/data/api/api_provider.dart';
import 'package:covid_vaccine/core/data/api/center_api_provider.dart';
import 'package:covid_vaccine/core/data/api/vaccination_api_provider.dart';
import 'package:covid_vaccine/core/data/repository/app_repository.dart';
import 'package:covid_vaccine/core/data/repository/center_repository.dart';
import 'package:covid_vaccine/core/data/repository/vaccination_repository.dart';
import 'package:covid_vaccine/core/models/entity/center_model.dart';
import 'package:covid_vaccine/core/models/entity/vaccination_model.dart';
import 'package:covid_vaccine/pages/center/controller/center_controller.dart';
import 'package:covid_vaccine/pages/information/controller/information_controller.dart';
import 'package:covid_vaccine/pages/side_effect/controller/side_effect_controller.dart';
import 'package:covid_vaccine/pages/vaccination/controllers/vaccination_controller.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiProvider<VaccinationModel>>(() => VaccinationApiProvider());
    Get.lazyPut<AppRepository<VaccinationModel>>(
        () => VaccinationRepository(provider: Get.find()));
    Get.lazyPut(() => VaccinationController(vaccinationRepository: Get.find()));

    Get.lazyPut<ApiProvider<CenterModel>>(() => CenterApiProvider());
    Get.lazyPut<AppRepository<CenterModel>>(
        () => CenterRepository(provider: Get.find()));
    Get.lazyPut(() => CenterController(centerRepository: Get.find()));

    Get.lazyPut(() => InformationController());
    Get.lazyPut(() => SideEffectController());
  }
}
