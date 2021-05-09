import 'package:covid_vaccine/pages/side_effect/controller/side_effect_controller.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SideEffectView extends StatelessWidget {
  final controller = Get.find<SideEffectController>();

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
                var sideEffectType = controller.sideEffectType;

                return Wrap(
                  alignment: WrapAlignment.center,
                  spacing: Insets.sm,
                  children: [
                    AppOutlinedButton(
                      label: '이상반응',
                      icon: FontAwesomeIcons.exclamationTriangle,
                      size: Sizes.xs,
                      backgroundColor: sideEffectType == SideEffectType.KIND
                          ? AppColors.primary
                          : AppColors.accent.withOpacity(0.75),
                      onPressed: () {
                        sideEffectType.value = SideEffectType.KIND;
                      },
                    ),
                    AppOutlinedButton(
                      label: '혈전증',
                      icon: FontAwesomeIcons.disease,
                      size: Sizes.xs,
                      backgroundColor:
                          sideEffectType == SideEffectType.THROMBOSIS
                              ? AppColors.primary
                              : AppColors.accent.withOpacity(0.75),
                      onPressed: () {
                        sideEffectType.value = SideEffectType.THROMBOSIS;
                      },
                    ),
                    AppOutlinedButton(
                      label: '대처',
                      icon: FontAwesomeIcons.firstAid,
                      size: Sizes.xs,
                      backgroundColor: sideEffectType == SideEffectType.ACTION
                          ? AppColors.primary
                          : AppColors.accent.withOpacity(0.75),
                      onPressed: () {
                        sideEffectType.value = SideEffectType.ACTION;
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
              var sideEffectType = controller.sideEffectType;
              var panleIndex = controller.panelIndex.value;
              var listViewChild;
              switch (sideEffectType.value) {
                case SideEffectType.KIND:
                  listViewChild = Container();
                  break;
                case SideEffectType.THROMBOSIS:
                  listViewChild = Container();
                  break;
                case SideEffectType.ACTION:
                  listViewChild = Container();
                  break;
              }

              return Expanded(
                child: ListView(
                  children: [listViewChild],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
