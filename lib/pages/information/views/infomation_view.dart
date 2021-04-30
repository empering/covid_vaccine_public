import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InformationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.infoCircle,
              color: AppColors.primary,
              size: Sizes.xxl,
            ),
            title: Text(
              '예방접종 정보',
              style: TextStyles.h1,
            ),
          ),
          Divider(
            color: AppColors.primary,
            height: Insets.md,
          ),
          Expanded(
            child: ListView(
              children: _buildListView(),
            ),
          ),
        ],
      ),
    );
  }

  _buildListView() {
    return [
      ListTile(
        title: Text('우리나라에는 어떤 코로나19 백신이 접종되나요?'),
      )
    ];
  }
}
