import 'package:covid_vaccine/core/models/entity/center_model.dart';
import 'package:covid_vaccine/core/models/enum/sido.dart';
import 'package:covid_vaccine/pages/center/controller/center_controller.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CenterView extends GetView<CenterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: controller.obx((state) {
          return buildListView(state!.data);
        }),
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
              Text('센터카드를 눌러서 상세정보를 확인하세요!'),
            ],
          ),
        )
      ],
    );
  }

  buildListView(List<VaccinationCenter> data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final center = data[index];
        return Container(
          padding: const EdgeInsets.symmetric(vertical: Insets.sm),
          margin: const EdgeInsets.all(Insets.sm),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Corners.lg),
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
            onTap: () {
              Get.toNamed('/center/detail', arguments: center);
            },
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Material(
                  elevation: Sizes.xxs,
                  shape: CircleBorder(),
                  child: Image(
                    height: Sizes.xl,
                    image: AssetImage(
                      'assets/sido/${Sido.getSidoEngName(center.sido)}.png',
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  Sido.getSidoShortName(center.sido),
                  style: TextStyle(fontSize: Sizes.xs),
                ),
              ],
            ),
            title: Text(
              center.centerName,
              style: TextStyle(fontSize: Sizes.sm),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(center.address),
                Text(center.facilityName),
              ],
            ),
          ),
        );
      },
    );
  }
}
