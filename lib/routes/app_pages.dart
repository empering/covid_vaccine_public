import 'package:covid_vaccine/core/binding/app_binding.dart';
import 'package:covid_vaccine/pages/app/views/app_view.dart';
import 'package:covid_vaccine/pages/vaccination/views/vaccination_detail_view.dart';
import 'package:covid_vaccine/pages/vaccination/views/vaccination_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const INITIAL = Routes.APP;

  static final routes = [
    GetPage(
      name: Routes.APP,
      page: () => AppView(),
      binding: AppBinding(),
      children: [
        GetPage(
          name: Routes.VACCINATION,
          page: () => VaccinationView(),
          // binding: HomeBinding(),
          children: [
            GetPage(
              name: Routes.SIDO,
              page: () => VaccinationDetailView(),
            ),
          ],
        ),
      ],
    ),
  ];
}
