import 'package:covid_vaccine/core/models/entity/vaccination_model.dart';
import 'package:covid_vaccine/core/models/enum/sido.dart';
import 'package:covid_vaccine/pages/vaccination/controllers/vaccination_controller.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class VaccinationDetailView extends GetView<VaccinationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('지역별 현황'),
        centerTitle: true,
      ),
      body: Center(
        child: controller.obx(
          (state) {
            var startIndex = state!.data.lastIndexWhere((d) => d.sido == '전국');
            var datum = state.data[startIndex];
            var data = state.data.sublist(startIndex + 1);

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: Insets.md),
                  child: Text(
                    '${datum.dateString()} 기준',
                    style: TextStyles.sans.copyWith(fontSize: Sizes.lg),
                  ),
                ),
                Divider(
                  color: AppColors.primary,
                  height: Insets.md,
                ),
                Expanded(
                  child: buildListView(data),
                )
              ],
            );
          },
        ),
      ),
      persistentFooterButtons: [
        Container(
          height: Sizes.md,
          width: MediaQuery.of(context).copyWith().size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppIcon(
                icon: FontAwesomeIcons.handPointUp,
                color: AppColors.primary,
              ),
              Text('지역별 현황을 눌러서 상세정보를 확인하세요!'),
            ],
          ),
        )
      ],
    );
  }

  buildListView(List<Vaccination> data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final vaccination = data[index];
        return Container(
          padding: const EdgeInsets.symmetric(vertical: Insets.sm),
          margin: const EdgeInsets.all(Insets.sm),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: AppColors.background,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset.zero,
              ),
            ],
          ),
          child: ListTile(
            // onTap: () {
            //   Get.toNamed('/home/country/details', arguments: vaccination);
            // },
            trailing: Material(
              elevation: 10.0,
              shape: CircleBorder(),
              child: Image(
                image: AssetImage(
                  'assets/sido/${Sido.getSidoEngName(vaccination.sido)}.png',
                ),
              ),
            ),
            title: Text(vaccination.sido),
            subtitle: buildSubtitle(vaccination),
          ),
        );
      },
    );
  }

  buildSubtitle(Vaccination vaccination) {
    return Padding(
      padding: const EdgeInsets.only(top: Insets.sm),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Text(
                  '1차 누적 접종',
                  textAlign: TextAlign.right,
                ),
              ),
              VerticalDivider(),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.only(right: Insets.xl),
                  child: Text(
                    '${NumberFormat.decimalPattern().format(vaccination.accumulatedFirstCnt)} 명',
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Text(
                  '2차 누적 접종',
                  textAlign: TextAlign.right,
                ),
              ),
              VerticalDivider(),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.only(right: Insets.xl),
                  child: Text(
                    '${NumberFormat.decimalPattern().format(vaccination.accumulatedSecondCnt)} 명',
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
