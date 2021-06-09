import 'package:covid_vaccine/core/shared/config/setting_service.dart';
import 'package:covid_vaccine/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  await mainCommon();

  Get.put(SettingService(StoreType.PLAY_STORE));

  runApp(MyApp());
}
