import 'package:covid_vaccine/core/data/api/api_provider.dart';
import 'package:covid_vaccine/core/data/api/center_api_provider.dart';
import 'package:covid_vaccine/core/data/api/institution_api_provider.dart';
import 'package:covid_vaccine/core/data/api/institution_sigugun_api_provider.dart';
import 'package:covid_vaccine/core/data/api/vaccination_api_provider.dart';
import 'package:covid_vaccine/core/data/repository/app_repository.dart';
import 'package:covid_vaccine/core/data/repository/center_repository.dart';
import 'package:covid_vaccine/core/data/repository/institution_repository.dart';
import 'package:covid_vaccine/core/data/repository/institution_sigugun_repository.dart';
import 'package:covid_vaccine/core/data/repository/vaccination_repository.dart';
import 'package:covid_vaccine/core/models/entity/center_model.dart';
import 'package:covid_vaccine/core/models/entity/institution_model.dart';
import 'package:covid_vaccine/core/models/entity/institution_sigugun_model.dart';
import 'package:covid_vaccine/core/models/entity/vaccination_model.dart';
import 'package:covid_vaccine/core/shared/ad/ad_manager.dart';
import 'package:covid_vaccine/pages/app/controller/app_controller.dart';
import 'package:covid_vaccine/pages/center/controller/center_controller.dart';
import 'package:covid_vaccine/pages/center/controller/institution_controller.dart';
import 'package:covid_vaccine/pages/information/controller/information_controller.dart';
import 'package:covid_vaccine/pages/side_effect/controller/side_effect_controller.dart';
import 'package:covid_vaccine/pages/vaccination/controllers/vaccination_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdManager(isRelease: kReleaseMode));

    Get.lazyPut(() => AppController());

    Get.lazyPut<ApiProvider<VaccinationModel>>(() => VaccinationApiProvider());
    Get.lazyPut<AppRepository<VaccinationModel>>(
        () => VaccinationRepository(provider: Get.find()));
    Get.lazyPut(() => VaccinationController(vaccinationRepository: Get.find()));

    Get.lazyPut<ApiProvider<CenterModel>>(() => CenterApiProvider());
    Get.lazyPut<AppRepository<CenterModel>>(
        () => CenterRepository(provider: Get.find()));
    Get.lazyPut(() => CenterController(centerRepository: Get.find()));

    Get.lazyPut<ApiProvider<List<InstitutionSigugunModel>>>(
      () => InstitutionSigugunApiProvider(),
      fenix: true,
    );
    Get.lazyPut<InstitutionSigugunRepository>(
      () => InstitutionSigugunRepository(provider: Get.find()),
      fenix: true,
    );

    Get.lazyPut<ApiProvider<List<InstitutionModel>>>(
      () => InstitutionApiProvider(),
      fenix: true,
    );
    Get.lazyPut<InstitutionRepository>(
      () => InstitutionRepository(provider: Get.find()),
      fenix: true,
    );

    Get.lazyPut(
      () => InstitutionController(
          institutionRepository: Get.find(),
          institutionSigugunRepository: Get.find()),
      fenix: true,
    );

    Get.lazyPut(() => InformationController());
    Get.lazyPut(() => SideEffectController());
  }
}
