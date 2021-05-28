import 'package:covid_vaccine/core/data/repository/institution_repository.dart';
import 'package:covid_vaccine/core/data/repository/institution_sigugun_repository.dart';
import 'package:covid_vaccine/core/models/entity/institution_model.dart';
import 'package:covid_vaccine/core/models/entity/institution_sigugun_model.dart';
import 'package:covid_vaccine/core/models/enum/sido.dart';
import 'package:get/get.dart';

class InstitutionController extends GetxController {
  final InstitutionRepository institutionRepository;
  final InstitutionSigugunRepository institutionSigugunRepository;

  InstitutionController({
    required this.institutionRepository,
    required this.institutionSigugunRepository,
  });

  var panelIsExpanded = false.obs;

  var sidoDropdownValues = SidoEnum.values
      .where((sido) => sido != SidoEnum.ALL && sido != SidoEnum.ETC)
      .map<Map<String, String>>((sido) => {
            'sidoName': Sido.getSidoName(sido),
            'sidoCode': Sido.getSidoCode(Sido.getSidoName(sido)),
          })
      .toList();

  var sidoValue = ''.obs;
  var sigugunValue = ''.obs;
  var addressValue = ''.obs;

  var sigugunDropdownValues = <InstitutionSigugunModel>[].obs;
  var institutions = <InstitutionModel>[].obs;
  var originData = <InstitutionModel>[];

  @override
  void onInit() async {
    super.onInit();

    ever(sidoValue, (_) {
      changeSido();
    });

    ever(sigugunValue, (_) {
      if (sigugunValue != '') {
        fetchInstitution();
      }
    });

    debounce(addressValue, (_) {
      filterInstitution();
    }, time: Duration(milliseconds: 500));
  }

  changeSido() async {
    var fetchData = await this
        .institutionSigugunRepository
        .fetchData(sidcod: sidoValue.value);

    sigugunDropdownValues.clear();
    sigugunDropdownValues.addAll(fetchData);
  }

  fetchInstitution() async {
    var institutionData = await this.institutionRepository.fetchData(
          sidcod: sidoValue.value,
          sggcd: sigugunValue.value,
        );

    originData.clear();
    institutions.clear();
    institutions.addAll(institutionData);
  }

  filterInstitution() {
    if (originData.length == 0) {
      originData = List.from(institutions);
    }

    var filteredData = List<InstitutionModel>.from(originData);

    if (addressValue.value != '') {
      filteredData = filteredData
          .where((institution) =>
              institution.orgZipaddr.contains(addressValue.value) ||
              institution.orgnm.contains(addressValue.value))
          .toList();
    }

    institutions.clear();
    institutions.addAll(filteredData);
  }
}
