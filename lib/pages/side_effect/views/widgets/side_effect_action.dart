import 'package:covid_vaccine/pages/side_effect/controller/side_effect_controller.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SideEffectAction extends StatelessWidget {
  final index;

  SideEffectAction({this.index = -1});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<SideEffectController>();

    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        controller.panelIndex.value =
            controller.panelIndex.value == panelIndex ? -1 : panelIndex;
      },
      elevation: 0,
      dividerColor: Colors.transparent,
      expandedHeaderPadding: EdgeInsets.zero,
      animationDuration: Duration(milliseconds: 500),
      children: [
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: AppTextWithIcon(
                content: '집에서 대처하세요',
                icon: FontAwesomeIcons.solidQuestionCircle,
              ),
            );
          },
          backgroundColor: AppColors.background,
          canTapOnHeader: true,
          isExpanded: index == 0,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextWithIcon(
                  content: '접종부위 부기, 통증이 있는 경우\n깨끗한 마른 수건을 대고 그 위에 냉찜질을 하세요.',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: AppColors.accent,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content: '미열이 있는 경우\n수분을 충분히 섭취하고 휴식을 취하세요.',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: AppColors.accent,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content: '발열이나 근육통 등으로 불편함이 있는 경우\n해열, 진통제를 복용하시면 도움이 됩니다.',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: AppColors.accent,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content: '예방접종 전 미리 아세트아미노펜 성분의 해열,진통제를 준비',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: Colors.black54,
                  textSize: Sizes.xs,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                AppTextWithIcon(
                  content: '예방 접종 후 몸살 증상이 있으면 해열,진통제 복용',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: Colors.black54,
                  textSize: Sizes.xs,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
              ],
            ),
          ),
        ),
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: AppTextWithIcon(
                content: '의사 진료를 받으세요',
                icon: FontAwesomeIcons.solidQuestionCircle,
              ),
            );
          },
          backgroundColor: AppColors.background,
          canTapOnHeader: true,
          isExpanded: index == 1,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextWithIcon(
                  content: '접종부위 부기, 통증, 발적이 24시간이 지나도 호전되지 않는 경우',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: AppColors.accent,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      '심한 두통 또는 2일이상의 지속적인 두통이 발생하며,\n진통제에 반응하지 않거나 조절되지 않는 경우 또는 시야가 흐려지는 경우',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: AppColors.accent,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content: '갑자기 기운이 떨어지거나 평소와 다른 이상 증상이 나타난 경우',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: AppColors.accent,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content: '접종부위가 아닌 곳에서 멍이나 출혈이 생긴 경우',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: AppColors.accent,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content: '몇 주 동안 호흡곤란, 흉통, 팔 또는 다리의 부기와 같은 증상이 나타난 경우',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: AppColors.accent,
                  textSize: Sizes.sm,
                ),
              ],
            ),
          ),
        ),
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: AppTextWithIcon(
                content: '119 신고 또는 응급실을 방문하세요',
                icon: FontAwesomeIcons.solidQuestionCircle,
              ),
            );
          },
          backgroundColor: AppColors.background,
          canTapOnHeader: true,
          isExpanded: index == 2,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextWithIcon(
                  content: '예방접종 후 숨쉬기 곤란하거나 심하게 어지러운 경우',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: AppColors.accent,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content: '입술, 얼굴이 붓거나 온몸에 심한 두드러기 증상이 나타나는 경우',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: AppColors.accent,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content: '갑자기 의식이 없거나 쓰러진 경우',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: AppColors.accent,
                  textSize: Sizes.sm,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
