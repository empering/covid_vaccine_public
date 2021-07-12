import 'package:get/get.dart';

enum InformationType {
  VACCINE,
  VACCINATION,
  SCHEDULE,
}

enum VaccineInformationType {
  NONE,
  VACCINE_LIST,
  VACCINE_DIFF,
}

class InformationController extends GetxController {
  var infoType = InformationType.SCHEDULE.obs;
  var panelIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();

    panelIndex.value = 2;

    ever(infoType, (_) {
      panelIndex.value = -1;
    });
  }
}
