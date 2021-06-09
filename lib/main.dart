import 'package:covid_vaccine/core/shared/notification/app_notification.dart';
import 'package:covid_vaccine/lang/translation_service.dart';
import 'package:covid_vaccine/routes/app_pages.dart';
import 'package:covid_vaccine/ui/theme/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

enum StoreType {
  PLAY_STORE,
  ONE_STORE,
}

Future<void> mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();

  await MobileAds.instance.initialize();
  await AppNotification.initialize();
}

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '안전 백신 정보 Plus',
      debugShowCheckedModeBanner: false,
      // enableLog: true,
      // logWriterCallback: Logger.write,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      // translations: TranslationService(),
      theme: AppThemes.themeData,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
    );
  }
}
