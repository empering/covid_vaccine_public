import 'package:covid_vaccine/lang/translation_service.dart';
import 'package:covid_vaccine/routes/app_pages.dart';
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
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            wordSpacing: 1,
            shadows: [
              Shadow(
                offset: Offset(5.0, 5.0),
                color: Colors.grey,
              ),
            ],
          ),
          subtitle1: TextStyle(),
          bodyText1: TextStyle(),
          bodyText2: TextStyle(color: Colors.deepOrangeAccent),
        ).apply(bodyColor: Colors.white),
      ),
    );
  }
}
