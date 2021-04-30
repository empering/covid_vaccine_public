import 'package:covid_vaccine/core/models/enum/sido.dart';
import 'package:covid_vaccine/pages/vaccination/controllers/vaccination_controller.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_buttons.dart';
import 'package:covid_vaccine/ui/widget/app_card.dart';
import 'package:covid_vaccine/ui/widget/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class VaccinationView extends GetView<VaccinationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        (state) {
          final datum = state!.data
              .lastWhere((d) => d.sido == Sido.getSidoName(SidoEnum.ALL));

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.shieldVirus,
                  color: AppColors.primary,
                  size: Sizes.xxl,
                ),
                title: Text(
                  '예방접종 현황',
                  style: TextStyles.h1,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: Insets.xxl),
                        child: Text('(${datum.dateString()} 24시 기준)'),
                      ),
                    ),
                    AppTextButton(
                      isIconFirst: false,
                      label: '자세히',
                      icon: FaIcon(FontAwesomeIcons.arrowRight),
                      onPressed: () {
                        Get.toNamed('/home/country');
                      },
                    )
                  ],
                ),
              ),
              Divider(
                color: AppColors.primary,
                height: Insets.md,
              ),
              AppCard(
                headerWidget: _buildCardHeader(),
                bodyWidget: _buildCardBody(
                  datum.totalFirstCnt,
                  datum.firstCnt,
                  datum.accumulatedFirstCnt,
                ),
                labelWidget: _buildCardLable('1차 접종'),
              ),
              Divider(
                color: AppColors.primary,
                height: Insets.sm,
              ),
              AppCard(
                headerWidget: _buildCardHeader(),
                bodyWidget: _buildCardBody(
                  datum.totalSecondCnt,
                  datum.secondCnt,
                  datum.accumulatedSecondCnt,
                ),
                labelWidget: _buildCardLable('2차 접종'),
                isPrimaryColor: false,
              ),
            ],
          );
        },
      ),
      persistentFooterButtons: [
        AppOutlinedButton(
          label: '지역별',
          icon: AppIcon(icon: FontAwesomeIcons.mapMarkerAlt),
          onPressed: () {
            Get.toNamed('/vaccination/sido');
          },
        ),
        AppOutlinedButton(
          label: '백신별',
          icon: AppIcon(icon: FontAwesomeIcons.syringe),
          backgroundColor: AppColors.accent,
          onPressed: () {
            Get.toNamed('/vaccination/sido');
          },
        ),
      ],
    );
  }

  _buildCardLable(String text) {
    return Text(
      text,
      style: TextStyles.sans.copyWith(color: AppColors.background),
    );
  }

  _buildCardHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '당일누적 ',
          style: TextStyles.lightXl,
        ),
        Text(
          '= 전일접종 + 전일누적',
          style: TextStyle(color: AppColors.background),
        ),
      ],
    );
  }

  _buildCardBody(num totalFirstCnt, num firstCnt, num accumulatedFirstCnt) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '${NumberFormat.decimalPattern().format(totalFirstCnt)}',
              style: TextStyles.lightXl,
            ),
            Text(
              ' 명',
              style: TextStyle(color: AppColors.light),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              ' = ',
              style: TextStyle(color: AppColors.background),
            ),
            Text(
              '${NumberFormat.decimalPattern().format(firstCnt)}',
              style: TextStyles.backgroundXl,
            ),
            Text(
              ' 명 + ',
              style: TextStyle(color: AppColors.background),
            ),
            Text(
              '${NumberFormat.decimalPattern().format(accumulatedFirstCnt)}',
              style: TextStyles.backgroundXl,
            ),
            Text(
              ' 명',
              style: TextStyle(color: AppColors.background),
            ),
          ],
        ),
      ],
    );
  }
}
