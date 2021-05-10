import 'package:covid_vaccine/core/data/repository/app_repository.dart';
import 'package:covid_vaccine/core/models/entity/center_model.dart';
import 'package:get/get.dart';

class CenterController extends SuperController<CenterModel> {
  final AppRepository<CenterModel> centerRepository;

  CenterController({required this.centerRepository});

  var panelIsExpanded = false.obs;

  @override
  void onInit() {
    super.onInit();
    append(() => centerRepository.fetchData);
  }

  @override
  void onDetached() {}

  @override
  void onInactive() {}

  @override
  void onPaused() {}

  @override
  void onResumed() {}
}
