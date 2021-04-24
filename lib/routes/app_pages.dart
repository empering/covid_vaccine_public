import 'package:covid_vaccine/pages/app.dart';
import 'package:covid_vaccine/pages/app/binding/AppBinding.dart';
import 'package:get/get.dart';

import '../pages/home/presentation/views/country_view.dart';
import '../pages/home/presentation/views/details_view.dart';
import '../pages/home/presentation/views/home_view.dart';

part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const INITIAL = Routes.APP;

  static final routes = [
    GetPage(
      name: Routes.APP,
      page: () => App(),
      binding: AppBinding(),
      children: [
        GetPage(
          name: Routes.HOME,
          page: () => HomeView(),
          // binding: HomeBinding(),
          children: [
            GetPage(
              name: Routes.COUNTRY,
              page: () => CountryView(),
              children: [
                GetPage(
                  name: Routes.DETAILS,
                  page: () => DetailsView(),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ];
}
