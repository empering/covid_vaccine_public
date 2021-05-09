import 'package:get/get.dart';

enum SideEffectType {
  KIND,
  THROMBOSIS, // 혈전증
  ACTION,
  // ANAPHYLAXIS,
}

class SideEffectController extends GetxController {
  var sideEffectType = SideEffectType.KIND.obs;
  var panelIndex = 0.obs;
}
