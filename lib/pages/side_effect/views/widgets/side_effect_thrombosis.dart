import 'package:covid_vaccine/pages/side_effect/controller/side_effect_controller.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_table.dart';
import 'package:covid_vaccine/ui/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SideEffectThrombosis extends StatelessWidget {
  final index;

  SideEffectThrombosis({this.index = -1});

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
                content: '혈소판감소성 혈전증',
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
                      '일반 혈전증과 달리 발생 확률이 희박하고 혈소판 감소를 동반한 뇌정맥동혈전증, 내장정맥혈전증 등과 같은 희귀한 혈전증입니다.',
                  textColor: AppColors.accent,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content: '매우 희박하지만 예방접종 후 4~28일 내 발생할 수 있습니다.',
                  icon: FontAwesomeIcons.angleRight,
                  textColor: AppColors.primary.withOpacity(0.8),
                  textSize: Sizes.xs,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                AppTextWithIcon(
                  content:
                      '영구의 경우 접종 인구 100만 명 당 7.9명(0.00079%) 발생보고가 있으며 우리나라에서는 현재까지 백신 접종 후 혈소판감소성 혈전증 발생 사례는 없습니다.',
                  icon: FontAwesomeIcons.angleRight,
                  textColor: AppColors.primary.withOpacity(0.8),
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
                content: '진료가 필요한 경우',
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
                  content: '접종 후 4주내 호흡곤란, 흉통, 지속적인 복부 통증, 다리부기와 같은 증상이 나타난 경우',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: Colors.black54,
                  textSize: Sizes.xs,
                ),
                AppTextWithIcon(
                  content:
                      '심한 두통 또는 2일이상의 지속적인 두통이 발생하며,\n진통제에 반응하지 않거나 조절되지 않는 경우 또는 시야가 흐려지는 경우',
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
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: AppTextWithIcon(
                content: '일반 혈전증과 비교',
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
                _buildTable(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildTable() {
    return Table(
      border: TableBorder.all(color: Colors.grey),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const <int, TableColumnWidth>{
        0: FixedColumnWidth(45),
        1: FlexColumnWidth(),
        2: FlexColumnWidth(),
      },
      children: [
        TableRow(
          children: [
            AppTableCell(
              text: '#',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black54,
            ),
            AppTableCell(
              text: '일반 혈전증',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: AppColors.accent,
            ),
            AppTableCell(
              text: '혈소판감소성 혈전증',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: AppColors.primary,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '임상\n특징',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
              isFirstCell: true,
            ),
            TableCell(
              child: Wrap(
                children: [
                  _cell(
                    title: '동맥',
                    text: '뇌동맥/관상동맥에 호발',
                  ),
                  _cell(
                    title: '정맥',
                    text: '하지 심부정맥/폐동맥에 발생',
                  ),
                ],
              ),
            ),
            TableCell(
              child: Wrap(
                children: [
                  _cell(
                    text: '백신 접종 후 4일에서 28일 사이에 발병',
                  ),
                  _cell(
                    text: '드문 부위인 뇌정맥동 및 내장정맥에 발생',
                  ),
                ],
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '검사\n지표',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
              isFirstCell: true,
            ),
            TableCell(
              child: Wrap(
                children: [
                  _cell(
                    text: '관상동맥 (CK, Tnl 상승)',
                  ),
                  _cell(
                    text: '정맥 (D-dimer 상승)',
                  ),
                ],
              ),
            ),
            TableCell(
              child: Wrap(
                children: [
                  _cell(
                    text: '혈소판 감소 동반',
                  ),
                  _cell(
                    text: 'PF4-헤파린항체 양성',
                  ),
                ],
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '발생\n기전',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
              isFirstCell: true,
            ),
            TableCell(
              child: Wrap(
                children: [
                  _cell(
                    title: '혈액흐름의 정체',
                    text: '거동장애/심박세동/혈관기형',
                  ),
                  _cell(
                    title: '혈관손상',
                    text: '죽상동맥경화증/혈관염',
                  ),
                  _cell(
                    title: '응고기능이상',
                    text: '탈수/암/자가면역질환/약물',
                  ),
                ],
              ),
            ),
            TableCell(
              child: Wrap(
                children: [
                  _cell(
                    title: '백신과 연관된 자가면역질환 추정',
                    text: '기존 약물 유발질환으로 알려진 헤파린 유도 혈소판감소증과 발생기전 유사한 것으로 추정',
                  ),
                ],
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '치료',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
              isFirstCell: true,
            ),
            TableCell(
              child: Wrap(
                children: [
                  _cell(
                    title: '동맥',
                    text: '혈전 용해제 혹은 혈전제거술, 스텐트 시술 및 항혈소판제',
                  ),
                  _cell(
                    title: '정맥',
                    text: '항응고제',
                  ),
                ],
              ),
            ),
            TableCell(
              child: Wrap(
                children: [
                  _cell(
                    text: '혈액전문의에게 의뢰',
                  ),
                  _cell(
                    text: '헤파린 및 혈소판수혈 금지',
                  ),
                  _cell(
                    text: '항응고치료는 경구약 혹은 주사제 사용',
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  _cell({required String text, String? title}) {
    var widgets = <Widget>[];
    if (title != null) {
      widgets.add(
        Padding(
          padding: const EdgeInsets.only(left: Insets.xs),
          child: Text(
            title,
            style: TextStyle(
              fontSize: Sizes.xxs,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }

    widgets.add(
      Padding(
        padding: const EdgeInsets.only(
          left: Insets.xs,
          top: Insets.xs,
        ),
        child: Text(
          '- $text',
          style: TextStyle(
            fontSize: Sizes.xxs,
            color: Colors.black54,
          ),
        ),
      ),
    );

    return Container(
      padding: EdgeInsets.all(Insets.xs),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      ),
    );
  }
}
