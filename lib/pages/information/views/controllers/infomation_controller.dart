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
  var infoType = InformationType.VACCINE.obs;
  var panelIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();

    panelIndex.value = -1;

    ever(infoType, (_) {
      panelIndex.value = -1;
    });
  }
}
