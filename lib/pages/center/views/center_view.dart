import 'package:covid_vaccine/core/models/entity/center_model.dart';
import 'package:covid_vaccine/pages/information/controller/center_controller.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CenterView extends GetView<CenterController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: controller.obx((state) {
        return buildListView(state!.data);
      }),
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
            title: Text(center.centerName),
          ),
        );
      },
    );
  }
}
