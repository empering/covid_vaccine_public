import 'package:covid_vaccine/pages/side_effect/controller/side_effect_controller.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SideEffectKind extends StatelessWidget {
  final index;

  SideEffectKind({this.index = -1});

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
                content: '예방접종 후 흔하게 발생하는 증상',
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
                  content:
                      '예방접종 후에 아래와 같은 증상이 흔하게 발생할 수 있으며 대부분 2~3일내 저절로 좋아집니다.',
                  textColor: AppColors.accent,
                  textSize: Sizes.sm,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Image(
                        image: AssetImage('assets/after_vaccination_1.png'),
                      ),
                    ),
                    Expanded(
                      child: Image(
                        image: AssetImage('assets/after_vaccination_2.png'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Image(
                        image: AssetImage('assets/after_vaccination_3.png'),
                      ),
                    ),
                    Expanded(
                      child: Image(
                        image: AssetImage('assets/after_vaccination_4.png'),
                      ),
                    ),
                  ],
                ),
                AppTextWithIcon(
                  content:
                      '일반적으로 예방접종 후 흔하게 나타나는 국소 이상반응은 접종부위 통증이나 부기, 발적 등이 있으며, 전신반응으로 발열, 피로감, 두통, 근육통, 메스꺼움, 구토 등이 나타날 수 있습니다.\n접종 후 흔히 나타나는 반응으로 별다른 조치 없이 대부분 3일 이내 증상이 사라집니다. 이는 정상적인 면역형성과정에서 나타날 수 있습니다.',
                  icon: FontAwesomeIcons.angleRight,
                  textColor: AppColors.primary.withOpacity(0.8),
                  textSize: Sizes.xs,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                AppTextWithIcon(
                  content:
                      '39도 이상의 고열, 알레르기 반응(두드러기나 발진, 얼굴이나 손 부기) 등의 증상이 나타나거나, 일반적으로 나타나는 이상반응의 증상이 일상생활을 방해하는 정도라면 의료기관을 방문하여 진료를 받으시기 바랍니다.',
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
                content: '접종 후 이런 증상이 생긴 경우',
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
                Row(
                  children: [
                    Expanded(
                      child: Image(
                        image:
                            AssetImage('assets/after_vaccination_action_1.png'),
                      ),
                    ),
                    Expanded(
                      child: Image(
                        image:
                            AssetImage('assets/after_vaccination_action_2.png'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Image(
                        image:
                            AssetImage('assets/after_vaccination_action_3.png'),
                      ),
                    ),
                    Expanded(
                      child: Image(
                        image:
                            AssetImage('assets/after_vaccination_action_4.png'),
                      ),
                    ),
                  ],
                ),
                AppTextWithIcon(
                  content: '예방접종 전 미리 아세트아미노펜 성분의 해열,진통제를 준비',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: Colors.black54,
                  textSize: Sizes.xs,
                ),
                AppTextWithIcon(
                  content: '예방 접종 후 몸살 증상이 있으면 해열,진통제 복용',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: Colors.black54,
                  textSize: Sizes.xs,
                ),
              ],
            ),
          ),
        ),
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: AppTextWithIcon(
                content: '이런경우에는 의사 진료를 받아야 해요',
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
                  content: '접종부위 부기, 통증, 발적이 48시간이 지나도 호전되지 않는 경우',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: Colors.black54,
                  textSize: Sizes.xs,
                ),
                AppTextWithIcon(
                  content: '4주 내 호흡곤란, 흉통, 지속적인 복부 통증, 다리 부기와 같은 증상이 나타난 경우',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: Colors.black54,
                  textSize: Sizes.xs,
                ),
                AppTextWithIcon(
                  content:
                      '심한 두통 또는 2일 이상의 지속적인 두통이 발생하며, 진통제에 반응하지 않거나 조절 되지 않는 경우 또는 시야가 흐려지는 경우',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: Colors.black54,
                  textSize: Sizes.xs,
                ),
                AppTextWithIcon(
                  content: '갑자기 기운이 떨어지거나 평소와 다른 이상 증상이 나타난 경우',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: Colors.black54,
                  textSize: Sizes.xs,
                ),
                AppTextWithIcon(
                  content: '접종부위가 아닌 곳에서 멍이나 출혈이 생긴 경우',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: Colors.black54,
                  textSize: Sizes.xs,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
