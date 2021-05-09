import 'package:covid_vaccine/pages/information/controller/information_controller.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class InformationVaccination extends StatelessWidget {
  final index;

  InformationVaccination({this.index = -1});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<InformationController>();

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
                content: '코로나19에 감염된적이 있는 사람도 접종 가능한가요?',
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
                      '예방접종 금기 대상이 아닌 경우 코로나19 감염된 이력이 있더라도 코로나19 예방접종을 권고합니다.',
                  textColor: Colors.black54,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      '단, 코로나19 감염 시 수동항체치료를 받은 경우, 코로나19 예방접종으로 인한 면역반응과 항체치료의 간섭효과를 피하기 위해 최소 90일 이후 예방접종 시행을 권고합니다.',
                  textColor: Colors.black54,
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
                content: '기저질환자도 접종 가능한가요?',
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
                  content:
                      '코로나19 백신 임상시험 결과 기저질환 없는 사람과 비슷한 면역반응 및 효과가 있는 것으로 확인되어 코로나19 예방접종을 권고합니다.',
                  textColor: Colors.black54,
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
                content: '모유수유중인데 접종 가능한가요?',
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
                  content:
                      '수유부 및 해당 수유부가 모유수유하는 영유아에 대한 코로나19 백신 안전성과 효능에 대한 자료는 아직 없습니다.',
                  textColor: Colors.black54,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      '그러나, 코로나19 감염으로부터 면역을 획득하기 위해 수유부가 접종대상자일 경우에도 수유부에게 코로나19 예방접종을 권고합니다.',
                  textColor: Colors.black54,
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
                content: '임신중일때 접종 가능한가요?',
                icon: FontAwesomeIcons.solidQuestionCircle,
              ),
            );
          },
          backgroundColor: AppColors.background,
          canTapOnHeader: true,
          isExpanded: index == 3,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextWithIcon(
                  content:
                      '아니오. 임신부의 경우 아직 임상시험 결과가 충분하지 않습니다. 따라서 안전성 및 효과에 대한 임상시험 결과가 나올 때까지 임신부는 접종 대상에서 제외됩니다.',
                  textColor: Colors.black54,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content: '코로나19 예방접종을 위해, 예방접종 전 임신검사, 예방접종 후 피임은 필요하지 않습니다.',
                  textColor: Colors.black54,
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
                content: '알레르기가 있는 경우 접종 가능한가요?',
                icon: FontAwesomeIcons.solidQuestionCircle,
              ),
            );
          },
          backgroundColor: AppColors.background,
          canTapOnHeader: true,
          isExpanded: index == 4,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextWithIcon(
                  content:
                      '일반적으로 음식 알레르기 등 경한 알레르기가 있는 경우 예방접종 금기는 아니나, 백신의 구성 물질에 아나필락시스와 같은 중증의 알레르기반응 발생 이력이 있는 경우, 1차 접종에서 아나필락시스 반응이 나타난 경우, 첫 번째 아스트라제네카 백신 접종 후 혈소판 감소를 동반한 혈전증 발생이 확인된 경우 접종 금기입니다. 다른 심각한 알레르기 반응의 병력이 있는 경우 의사와 상의가 필요합니다.',
                  textColor: Colors.black54,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      '(화이자, 모더나) polyethylene glycol(PEG) 또는 관련 성분(molecules)에 중증 알레르기 반응 발생 이력이 있는 경우 접종 금기대상에 포함',
                  textColor: Colors.black54,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      '(아스트라제네카, 얀센) polysorbate에 중증 알레르기 반응 발생 이력이 있는 경우 접종 금기대상에 포함',
                  textColor: Colors.black54,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      'PEG와 polysorbate는 구조적으로 관련되어 있어 교차과민 반응을 일으킬 수 있으므로 주의 필요',
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
                content: '폴리에틸렌글리콜(PEG)과 폴리소르베이트는 어떤 제품에 포함되어 있나요?',
                icon: FontAwesomeIcons.solidQuestionCircle,
              ),
            );
          },
          backgroundColor: AppColors.background,
          canTapOnHeader: true,
          isExpanded: index == 5,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextWithIcon(
                  content:
                      '폴리에틸렌글리콜(PEG)은 약물, 대장 내시경용 장 준비제품(장 세척제), 기침 시럽, 화장품, 피부 및 수술 중 사용되는 의료 제품, 치약, 렌즈 및 콘택트 렌즈 솔루션 등의 제품에서 발견됩니다.',
                  textColor: Colors.black54,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      '만약 약(장 세척제 등), 화장품, 음식, 다른 종류의 백신 접종 등에 대한 알레르기 병력이 있는 경우 예진표에 자세히 기록해 주시기 바랍니다.',
                  textColor: Colors.black54,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      '폴리소르베이트 80(polysorbate 80)은 이미 우리가 널리 예방접종 하고 있는 폐렴구균, 자궁경부암, 로타바이러스 일부 백신에 포함되어 있습니다.',
                  textColor: Colors.black54,
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
