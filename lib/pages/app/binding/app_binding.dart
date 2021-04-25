import 'package:covid_vaccine/pages/home/data/home_api_provider.dart';
import 'package:covid_vaccine/pages/home/data/home_repository.dart';
import 'package:covid_vaccine/pages/home/domain/adapters/repository_adapter.dart';
import 'package:covid_vaccine/pages/home/presentation/controllers/home_controller.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IHomeProvider>(() => HomeProvider());
    Get.lazyPut<IHomeRepository>(() => HomeRepository(provider: Get.find()));
    Get.lazyPut(() => HomeController(homeRepository: Get.find()));
  }
}
