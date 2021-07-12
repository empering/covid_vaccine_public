import 'package:covid_vaccine/pages/information/controller/information_controller.dart';
import 'package:covid_vaccine/pages/information/views/widgets/information_schedule.dart';
import 'package:covid_vaccine/pages/information/views/widgets/information_vaccination.dart';
import 'package:covid_vaccine/pages/information/views/widgets/information_vaccine.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class InformationView extends StatelessWidget {
  final controller = Get.find<InformationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: Insets.sm),
            child: Obx(
              () {
                var infoType = controller.infoType;

                return Wrap(
                  alignment: WrapAlignment.center,
                  spacing: Insets.sm,
                  children: [
                    AppOutlinedButton(
                      label: '일정',
                      icon: FontAwesomeIcons.calendarCheck,
                      size: Sizes.xs,
                      backgroundColor: infoType == InformationType.SCHEDULE
                          ? AppColors.primary
                          : AppColors.accent.withOpacity(0.75),
                      onPressed: () {
                        infoType.value = InformationType.SCHEDULE;
                      },
                    ),
                    AppOutlinedButton(
                      label: '백신',
                      icon: FontAwesomeIcons.infoCircle,
                      size: Sizes.xs,
                      backgroundColor: infoType == InformationType.VACCINE
                          ? AppColors.primary
                          : AppColors.accent.withOpacity(0.75),
                      onPressed: () {
                        infoType.value = InformationType.VACCINE;
                      },
                    ),
                    AppOutlinedButton(
                      label: '접종',
                      icon: FontAwesomeIcons.syringe,
                      size: Sizes.xs,
                      backgroundColor: infoType == InformationType.VACCINATION
                          ? AppColors.primary
                          : AppColors.accent.withOpacity(0.75),
                      onPressed: () {
                        infoType.value = InformationType.VACCINATION;
                      },
                    ),
                  ],
                );
              },
            ),
          ),
          Divider(
            color: AppColors.primary,
            height: Insets.md,
          ),
          Obx(
            () {
              var infoType = controller.infoType;
              var panleIndex = controller.panelIndex.value;
              var listViewChild;
              switch (infoType.value) {
                case InformationType.VACCINE:
                  listViewChild = InformationVaccine(index: panleIndex);
                  break;
                case InformationType.VACCINATION:
                  listViewChild = InformationVaccination(index: panleIndex);
                  break;
                case InformationType.SCHEDULE:
                  listViewChild = InformationSchedule(index: panleIndex);
                  break;
              }

              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: ListView(
                    children: [listViewChild],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
