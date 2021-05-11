import 'package:covid_vaccine/core/models/entity/center_model.dart';
import 'package:covid_vaccine/core/models/enum/sido.dart';
import 'package:covid_vaccine/pages/center/controller/center_controller.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:search_choices/search_choices.dart';

class CenterView extends GetView<CenterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(() {
            return _buildSearchBar(controller.panelIsExpanded.value);
          }),
          Expanded(
            child: controller.obx((state) {
              return _buildListView(state!.data);
            }),
          ),
        ],
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

  _buildSearchBar(panelIsExpanded) {
    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        controller.panelIsExpanded.value = !isExpanded;
      },
      elevation: 0,
      dividerColor: Colors.transparent,
      expandedHeaderPadding: EdgeInsets.zero,
      animationDuration: Duration(milliseconds: 500),
      children: [
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              leading: AppIcon(
                icon: FontAwesomeIcons.searchLocation,
                color: AppColors.primary,
              ),
              title: Text('검색'),
            );
          },
          backgroundColor: AppColors.background,
          canTapOnHeader: true,
          isExpanded: panelIsExpanded,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Insets.md),
            child: Column(
              children: [
                SearchChoices.single(
                  items: controller.sidoDropdownValues
                      .map<DropdownMenuItem<String>>((sidoName) {
                    return DropdownMenuItem(
                      value: sidoName,
                      child: Text(
                        sidoName,
                        style: TextStyle(
                          color: AppColors.enabled,
                          fontSize: Sizes.sm,
                        ),
                      ),
                    );
                  }).toList(),
                  hint: '지역선택',
                  searchHint: '지역명을 입력하세요',
                  isExpanded: true,
                  style: TextStyles.base.copyWith(fontSize: Sizes.sm),
                  underline: Container(),
                  onChanged: (newValue) {
                    controller.sidoValue.value = newValue;
                  },
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: Insets.sm),
                  child: Builder(builder: (context) {
                    return TextField(
                      decoration: InputDecoration(
                        hintText: '검색할 주소를 입력하세요.',
                        hintStyle: TextStyle(color: AppColors.disabled),
                        alignLabelWithHint: true,
                      ),
                      style: TextStyles.base.copyWith(
                        fontSize: Sizes.sm,
                        color: AppColors.enabled,
                        fontWeight: FontWeight.normal,
                      ),
                      onChanged: (value) {
                        controller.addressValue.value = value;
                      },
                      onEditingComplete: () {
                        FocusScope.of(context).unfocus();
                        controller.filterCenter();
                      },
                    );
                  }),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  _buildListView(List<VaccinationCenter> data) {
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
