import 'package:covid_vaccine/core/binding/app_binding.dart';
import 'package:covid_vaccine/pages/app/views/app_view.dart';
import 'package:covid_vaccine/pages/center/views/center_detail_view.dart';
import 'package:covid_vaccine/pages/center/views/center_view.dart';
import 'package:covid_vaccine/pages/center/views/institution_detail_view.dart';
import 'package:covid_vaccine/pages/center/views/institution_view.dart';
import 'package:covid_vaccine/pages/information/views/infomation_view.dart';
import 'package:covid_vaccine/pages/side_effect/views/side_effect_view.dart';
import 'package:covid_vaccine/pages/vaccination/views/vaccination_sido_view.dart';
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
          children: [
            GetPage(
              name: Routes.SIDO,
              page: () => VaccinationDetailView(),
            ),
          ],
        ),
        GetPage(
          name: Routes.CENTER,
          page: () => CenterView(),
          children: [
            GetPage(
              name: Routes.DETAIL,
              page: () => CenterDetailView(),
            )
          ],
        ),
        GetPage(
          name: Routes.INSTITUTION,
          page: () => InstitutionView(),
          children: [
            GetPage(
              name: Routes.DETAIL,
              page: () => InstitutionDetailView(),
            )
          ],
        ),
        GetPage(
          name: Routes.INFORMATION,
          page: () => InformationView(),
        ),
        GetPage(
          name: Routes.SIDE_EFFECT,
          page: () => SideEffectView(),
        ),
      ],
    ),
  ];
}
