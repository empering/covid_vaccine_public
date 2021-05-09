import 'package:covid_vaccine/pages/information/controller/information_controller.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_table.dart';
import 'package:covid_vaccine/ui/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class InformationVaccine extends StatelessWidget {
  final index;

  InformationVaccine({this.index = -1});

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
                content: '어떤 백신이 접종되나요?',
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
                      '국내 도입하는 백신은 바이러스 벡터 백신 2종(아스트라제네카 코로나19 백신, 얀센 코로나19 백신), mRNA 백신 2종(화이자 코로나19 백신, 모더나 코로나19 백신), 재조합 백신 1종(노바백스 코로나19 백신)에 대해 구매 계약을 체결하였습니다.',
                  textColor: Colors.black54,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      '현재 우리나라에서는 아스트라제네카 코로나19 백신(한국아스트라제네카코비드-19백신주, 2월 10일) 화이자 코로나19 백신(코미나티주, 3월5일), 얀센 코로나19 백신(코비드-19백신 얀센주, 4월7일)이 허가되었습니다.',
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
                content: '백신별 차이점이 뭔가요?',
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
                _buildTable(),
              ],
            ),
          ),
        ),
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: AppTextWithIcon(
                content: '백신의 임상시험 결과는 어떤가요?',
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
                      '우리나라에서 특례수입 승인 된 COVAX-화이자 코로나19 백신의 경우, 승인 과정에서 제출된 2건의 임상시험에 따르면,',
                  textColor: AppColors.accent.withOpacity(0.8),
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      '일반적인 이상반응은 주사부위 통증, 피로, 두통, 근육통, 오한, 관절통, 발열 및 주사부위 부종이었으며, 일반적으로 경증 또는 중간 정도 수준이었고, 백신 접종 후 며칠 내에 소실되었습니다.',
                  icon: FontAwesomeIcons.angleRight,
                  textColor: AppColors.primary.withOpacity(0.8),
                  textSize: Sizes.sm,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                AppTextWithIcon(
                  content: '1회 이상 백신을 투여한 만 16세 이상 대상자 총 2만 1,744명 평가',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: Colors.black54,
                  textSize: Sizes.xs,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                AppTextWithIcon(
                  content: '안전성에 있어서 대부분 백신 투여와 관련된 예측된 이상사례로 전반적으로 양호했습니다.',
                  icon: FontAwesomeIcons.angleRight,
                  textColor: AppColors.primary.withOpacity(0.8),
                  textSize: Sizes.sm,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                Divider(color: AppColors.primary),
                AppTextWithIcon(
                  content:
                      '2021.2.10.에 허가된 아스트라제네카 코로나 19 백신(한국아스트라제네카코비드-19백신)의 경우, 승인 과정에서 제출된 자료에 의하면,',
                  textColor: AppColors.accent.withOpacity(0.8),
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      '일반적으로 매우 흔하게(10% 이상) 나타난 이상사례는 주사부위 통증, 압통, 멍, 온감, 발적, 피로, 두통, 근육통, 권태, 열감이었으며, 증상은 대부분 경증에서 중간 정도 수준으로 백신 접종 후 며칠 내에 소실됐습니다.',
                  icon: FontAwesomeIcons.angleRight,
                  textColor: AppColors.primary.withOpacity(0.8),
                  textSize: Sizes.sm,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                AppTextWithIcon(
                  content:
                      '영국(1,2상, 2,3상)·브라질(3상)·남아프리카공화국(1,2상) 등 4건의 임상시험에 18세 이상 대상자 총 2만 3,745명 평가(백신군 1만 2,021명, 대조군 1만 1,724명, 65세 이상 8.9%(2,109명) 포함)',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: Colors.black54,
                  textSize: Sizes.xs,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                AppTextWithIcon(
                  content:
                      '백신 투여 후 과민반응으로 나타날 수 있는 아나필락시스반응과 코로나 증상 악화 등의 이상사례는 나타나지 않았습니다.',
                  icon: FontAwesomeIcons.angleRight,
                  textColor: AppColors.primary.withOpacity(0.8),
                  textSize: Sizes.sm,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                AppTextWithIcon(
                  content: '아나필락시스 : 항원-항체 면역반응이 원인이 되어 발생하는 급격한 전신반응',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: Colors.black54,
                  textSize: Sizes.xs,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                AppTextWithIcon(
                  content:
                      '65세 이상 고령자의 경우에도 약물과 관련된 중대한 이상사례는 발생하지 않았으며, 예측되거나 예측되지 않은 이상사례 발생률은 성인군과 비교했을 때 유사하거나 낮은 수준이었습니다.',
                  icon: FontAwesomeIcons.angleRight,
                  textColor: AppColors.primary.withOpacity(0.8),
                  textSize: Sizes.sm,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                AppTextWithIcon(
                  content:
                      '예측되는 이상사례: 성인(87.7%) vs 고령자(82.4%), 예측되지 않은 이상사례: 성인(39.2%) vs 고령자 (24.6%)',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: Colors.black54,
                  textSize: Sizes.xs,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                Divider(color: AppColors.primary),
                AppTextWithIcon(
                  content: '2021.3.5.에 허가된 화이자 코로나19 백신(코미나티 주)의 경우',
                  textColor: AppColors.accent.withOpacity(0.8),
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      '일반적으로 흔하게(1% 이상) 나타난 이상사례는 주사부위 통증, 발열, 피로, 오한, 두통, 근육통 등이었으며, 증상은 대부분 경증에서 중간 정도 수준으로 백신 접종 후 며칠 내에 회복되었습니다.',
                  icon: FontAwesomeIcons.angleRight,
                  textColor: AppColors.primary.withOpacity(0.8),
                  textSize: Sizes.sm,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                AppTextWithIcon(
                  content:
                      '백신 투여 후 약물 관련 과민반응(두드러기)은 1건 발생하였으며 약물 관련 아나필락시스 반응은 임상시험 기간 중 보고되지 않았습니다.',
                  icon: FontAwesomeIcons.angleRight,
                  textColor: AppColors.primary.withOpacity(0.8),
                  textSize: Sizes.sm,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                AppTextWithIcon(
                  content:
                      '아울러 임상시험의 모든 등록대상자 4만 3,448명 중 백신군 0.6%(126명), 대조군 0.5%(111명)에서 "중대한 이상사례"가 보고됐으며, 이 중 백신 투여와 관련성을 배제할 수 없는 "중대한 약물이상반응"은 어깨부위 상처 등 4건으로 림프절병증, 심실성부정맥은 회복되었고, 어깨부위상처, 요통/양측하지 통증은 회복중에 있습니다.',
                  icon: FontAwesomeIcons.angleRight,
                  textColor: AppColors.primary.withOpacity(0.8),
                  textSize: Sizes.sm,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                AppTextWithIcon(
                  content:
                      '어깨 부위 상처(백신 투여 관련), 림프절병증, 심실성 부정맥, 요통/양측하지 통증 각 1건' +
                          '\n림프절병증 : 림프절(면역반응이 일어나는 면역기관)의 비대로 인하여 생기는 병의 증상',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: Colors.black54,
                  textSize: Sizes.xs,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                Divider(color: AppColors.primary),
                AppTextWithIcon(
                  content: '2021.4.7.에 허가된 얀센 코로나19 백신(코비드-19백신 얀센주)의 경우',
                  textColor: AppColors.accent.withOpacity(0.8),
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      '일반적으로 매우 흔하게(10% 이상) 나타난 이상사례는 주사부위 통증, 두통, 피로, 근육통 등이었으며, 증상은 대부분 경증에서 중간 정도 수준으로 백신 접종 후 2~3일 이내에 회복되었습니다.',
                  icon: FontAwesomeIcons.angleRight,
                  textColor: AppColors.primary.withOpacity(0.8),
                  textSize: Sizes.sm,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                AppTextWithIcon(
                  content:
                      '아울러 임상시험의 모든 등록대상자 4만 3,783명 중 백신군 0.4%(83명), 대조군 0.4%(96명)에서 "중대한 이상사례"가 보고됐으며, 이 중 백신 투여와 관련성을 배제할 수 없는 "중대한 약물이상반응"은 상완신경근염 등 7건이었으며, 임상시험 자료 제출시점에는 대부분 회복중이었습니다.',
                  icon: FontAwesomeIcons.angleRight,
                  textColor: AppColors.primary.withOpacity(0.8),
                  textSize: Sizes.sm,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
                AppTextWithIcon(
                  content:
                      '길랑-바레 증후군, 심낭염, 상완신경근염, 접종 후 증후군, 과민반응(각 1건), 안면마비(2건)',
                  icon: FontAwesomeIcons.exclamationTriangle,
                  textColor: Colors.black54,
                  textSize: Sizes.xs,
                  padding: EdgeInsets.only(left: Insets.md, top: Insets.sm),
                ),
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
        0: FixedColumnWidth(55),
        1: FlexColumnWidth(),
        2: FlexColumnWidth(),
        3: FlexColumnWidth(),
      },
      children: [
        TableRow(
          children: [
            AppTableCell(
              text: '제조사',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black54,
            ),
            AppTableCell(
              text: '화이자',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: AppColors.accent,
            ),
            AppTableCell(
              text: '모더나',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: AppColors.primary,
            ),
            AppTableCell(
              text: '아스트라\n제네카',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: AppColors.accent,
            ),
            AppTableCell(
              text: '얀센',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: AppColors.primary,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '백신명',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: '코미나티주',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '-',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '한국아스트라제네카코비드-19백신',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '-',
              textColor: Colors.black54,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '플랫폼',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: 'mRNA\n(핵산)백신',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: 'mRNA\n(핵산)백신',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '바이러스 벡터 백신',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '바이러스 벡터 백신',
              textColor: Colors.black54,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '연령',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: '만 16세\n이상',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '만 18세\n이상',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '만 18세\n이상',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '-',
              textColor: Colors.black54,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '구성',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: '다회 투여용 바이알',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '다회 투여용 바이알',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '다회 투여용 바이알',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '-',
              textColor: Colors.black54,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '접종\n횟수',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: '2회\n21일',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '2회\n28일',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '2회\n8~12주',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '1회',
              textColor: Colors.black54,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '접종\n방법',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: '0.3ml\n근육주사',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '0.ml\n근육주사',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '0.5ml\n근육주사',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '-',
              textColor: Colors.black54,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '보관',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: '-90~-60도\n6개월',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '-20도\n6개월',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '2~8도\n6개월',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '-20도\n24개월',
              textColor: Colors.black54,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '유통',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: '2~8도\n5일',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '2~8도\n30일',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '2~8도\n6개월',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '2~8도\n3개월',
              textColor: Colors.black54,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '개봉후',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: '실온 6시간',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '실온 6시간',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '실온 6시간\n30도 이하',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '냉장 4~6시간',
              textColor: Colors.black54,
            ),
          ],
        ),
      ],
    );
  }
}
