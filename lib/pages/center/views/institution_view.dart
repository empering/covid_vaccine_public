import 'package:covid_vaccine/core/models/entity/institution_model.dart';
import 'package:covid_vaccine/pages/center/controller/institution_controller.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_buttons.dart';
import 'package:covid_vaccine/ui/widget/app_icon.dart';
import 'package:covid_vaccine/ui/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:search_choices/search_choices.dart';

class InstitutionView extends StatelessWidget {
  final controller = Get.find<InstitutionController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('코로나 19 예방접종 기관'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: Insets.sm),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: Insets.sm,
              children: [
                AppOutlinedButton(
                  label: '예방접종센터',
                  icon: FontAwesomeIcons.mapMarkerAlt,
                  size: Sizes.xs,
                  backgroundColor: AppColors.accent.withOpacity(0.75),
                  onPressed: () {
                    Get.back();
                  },
                ),
                AppOutlinedButton(
                  label: '참여의료기관',
                  icon: FontAwesomeIcons.mapMarkerAlt,
                  size: Sizes.xs,
                  backgroundColor: AppColors.primary,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Obx(() {
            return _buildSearchBar(controller.panelIsExpanded.value);
          }),
          Expanded(
            child: Obx(() {
              return _buildListView(controller.institutions);
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
              Text('카드를 눌러서 상세정보를 확인하세요!'),
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
                Row(
                  children: [
                    Expanded(
                      child: SearchChoices.single(
                        items: controller.sidoDropdownValues
                            .map<DropdownMenuItem<String>>((sido) {
                          return DropdownMenuItem(
                            value: sido['sidoCode'],
                            child: Text(
                              sido['sidoName']!,
                              style: TextStyle(
                                color: AppColors.enabled,
                                fontSize: Sizes.sm,
                              ),
                            ),
                          );
                        }).toList(),
                        value: controller.sidoValue.value,
                        hint: '광역시도 선택',
                        searchHint: '광역시, 도명을 입력하세요',
                        isExpanded: true,
                        style: TextStyles.base.copyWith(fontSize: Sizes.sm),
                        underline: Container(),
                        onChanged: (newValue) {
                          controller.sidoValue.value = newValue ?? '';
                        },
                      ),
                    ),
                    Expanded(
                      child: SearchChoices.single(
                        items: controller.sigugunDropdownValues
                            .map<DropdownMenuItem<String>>((sigugun) {
                          return DropdownMenuItem(
                            value: sigugun.ditord,
                            child: Text(
                              sigugun.sidditnam,
                              style: TextStyle(
                                color: AppColors.enabled,
                                fontSize: Sizes.sm,
                              ),
                            ),
                          );
                        }).toList(),
                        hint: '시군구선택',
                        searchHint: '시, 군, 구명을 입력하세요',
                        isExpanded: true,
                        style: TextStyles.base.copyWith(fontSize: Sizes.sm),
                        underline: Container(),
                        onChanged: (newValue) {
                          controller.sigugunValue.value = newValue;
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: Insets.sm),
                  child: Builder(builder: (context) {
                    return TextField(
                      decoration: InputDecoration(
                        hintText: '검색할 주소/기관명을 입력하세요.',
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
                        controller.filterInstitution();
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

  _buildListView(List<InstitutionModel> data) {
    if (data.length == 0) {
      return Padding(
        padding: const EdgeInsets.all(30),
        child: AppTextWithIcon(
          content: '검색된 참여의료기관이 없습니다.',
          icon: FontAwesomeIcons.exclamationTriangle,
        ),
      );
    }

    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final institution = data[index];
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
              Get.toNamed('/institution/detail', arguments: institution);
            },
            title: Text(
              institution.orgnm,
              style: TextStyle(fontSize: Sizes.sm),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(institution.orgZipaddr.split(' ').sublist(2).join(' ')),
                Text(institution.orgTlno),
              ],
            ),
          ),
        );
      },
    );
  }
}
