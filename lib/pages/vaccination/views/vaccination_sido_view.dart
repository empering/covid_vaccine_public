import 'package:covid_vaccine/core/models/entity/vaccination_model.dart';
import 'package:covid_vaccine/core/models/enum/sido.dart';
import 'package:covid_vaccine/pages/vaccination/controllers/vaccination_controller.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:flutter/material.dart';
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
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: Insets.md),
                  child: Text(
                    '2021-04-25 기준',
                    style: TextStyles.sans.copyWith(fontSize: Sizes.lg),
                  ),
                ),
                Divider(
                  color: AppColors.primary,
                  height: Insets.md,
                ),
                Expanded(
                  child: buildListView(state!),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  buildListView(VaccinationModel model) {
    var startIndex = model.data.lastIndexWhere((d) => d.sido == '전국');
    var data = model.data.sublist(startIndex + 1);

    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final vaccination = data[index];
        return ListTile(
          // onTap: () {
          //   Get.toNamed('/home/country/details', arguments: vaccination);
          // },
          trailing: CircleAvatar(
            backgroundColor: AppColors.light,
            backgroundImage: vaccination.sido == '기타'
                ? null
                : AssetImage(
                    'assets/sido/${Sido.getSidoEngName(vaccination.sido)}.png'),
          ),
          title: Text(vaccination.sido),
          subtitle: Column(
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
                    child: Text(
                      '${NumberFormat.decimalPattern().format(vaccination.accumulatedFirstCnt)}',
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
                    child: Text(
                      '${NumberFormat.decimalPattern().format(vaccination.accumulatedSecondCnt)}',
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
