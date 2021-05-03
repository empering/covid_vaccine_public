import 'package:covid_vaccine/core/models/entity/center_model.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CenterDetailView extends StatelessWidget {
  final VaccinationCenter center = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('접종센터 상세정보'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            _buildPageTitle(),
            Divider(
              color: AppColors.primary,
              height: Insets.md,
            ),
          ],
        ),
      ),
    );
  }

  _buildPageTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(Insets.md, Insets.md, Insets.md, 0),
      child: FittedBox(
        child: Text(
          center.centerName,
          style: TextStyles.sans.copyWith(fontSize: Sizes.lg),
        ),
      ),
    );
  }
}
