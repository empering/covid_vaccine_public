import 'package:covid_vaccine/lang/translation_service.dart';
import 'package:covid_vaccine/routes/app_pages.dart';
import 'package:covid_vaccine/shared/const/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // debugShowCheckedModeBanner: false,
      // enableLog: true,
      // logWriterCallback: Logger.write,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      // translations: TranslationService(),
      theme: ThemeData(
        primaryColor: AppColor.primary,
        accentColor: AppColor.accent,
        backgroundColor: AppColor.background,
        scaffoldBackgroundColor: AppColor.background,
        canvasColor: AppColor.background,
        fontFamily: 'BMJUA',
        appBarTheme: AppBarTheme(
          backgroundColor: AppColor.primary,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: AppColor.primary,
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'GmarketSansBold',
          ),
          subtitle1: TextStyle(
            color: AppColor.primary,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'GmarketSansBold',
          ),
          bodyText1: TextStyle(),
          bodyText2: TextStyle(color: AppColor.accent),
        ).apply(
          bodyColor: AppColor.primary
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: AppColor.primary,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: AppColor.primary,
              width: 2,
            ),
            backgroundColor: AppColor.primary,
            shape: StadiumBorder(),
          ),
        ),
      ),
    );
  }
}
