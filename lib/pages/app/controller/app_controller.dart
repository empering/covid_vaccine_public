import 'package:covid_vaccine/core/shared/config/setting_service.dart';
import 'package:covid_vaccine/core/shared/notification/app_notification.dart';
import 'package:covid_vaccine/main.dart';
import 'package:covid_vaccine/ui/widget/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';

class AppController extends GetxController {
  var appVersion = ''.obs;
  var appBuildNumber = ''.obs;
  var isNotification = false.obs;

  final SettingService settingService;

  AppController({required this.settingService});

  @override
  void onInit() async {
    super.onInit();

    var packageInfo = await PackageInfo.fromPlatform();
    appVersion.value = packageInfo.version;
    appBuildNumber.value = packageInfo.buildNumber;

    isNotification.value =
        settingService.sharedPreferences.getBool('isNotification') ?? false;
  }

  @override
  void onReady() {
    if (settingService.sharedPreferences.getBool('isNotification') == null) {
      Get.defaultDialog(
        title: '확인해주세요',
        middleText: '알림설정에 동의 하시면\n매일 아침 9시 40분\n접종 현황을 알려드려요.',
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextButton(
                icon: Icon(Icons.check_circle_outline),
                label: '동의',
                onPressed: () async {
                  setNotification(true);
                  Get.back();
                },
              ),
              AppTextButton(
                icon: Icon(Icons.cancel_outlined),
                label: '거절',
                onPressed: () {
                  setNotification(false);
                  Get.back();
                },
              ),
            ],
          )
        ],
      );
    } else {
      setNotification(isNotification.value);
    }
  }

  setIsNotification(bool value) {
    settingService.sharedPreferences.setBool('isNotification', value);
  }

  setNotification(bool value) {
    isNotification.value = value;
    setIsNotification(value);

    if (isNotification.value) {
      AppNotification.zonedSchedule(
        title: 'Covid-19 예방접종 현황',
        body: 'Covid-19 예방접종 현황이 업데이트 되었어요.',
      );
    } else {
      AppNotification.cancelNotification();
    }
  }

  goMarket() async {
    var url = settingService.storeType == StoreType.ONE_STORE
        ? 'onestore://common/product/0000756029'
        : 'market://details?id=kr.co.azzu.covid_vaccine';

    await launch(url);
  }
}
