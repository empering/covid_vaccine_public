import 'package:covid_vaccine/core/shared/notification/app_notification.dart';
import 'package:get/get.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';

class AppController extends GetxController {
  var appVersion = ''.obs;
  var appBuildNumber = ''.obs;
  var isNotification = false.obs;

  @override
  void onInit() async {
    super.onInit();

    var packageInfo = await PackageInfo.fromPlatform();
    appVersion.value = packageInfo.version;
    appBuildNumber.value = packageInfo.buildNumber;
  }

  setNotification(bool value) {
    isNotification.value = value;

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
    await launch(
        'https://play.google.com/store/apps/details?id=kr.co.azzu.covid_vaccine&dummy=$appBuildNumber');
  }
}