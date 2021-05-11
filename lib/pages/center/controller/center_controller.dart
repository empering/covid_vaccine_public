import 'package:covid_vaccine/core/data/repository/app_repository.dart';
import 'package:covid_vaccine/core/models/entity/center_model.dart';
import 'package:covid_vaccine/core/models/enum/sido.dart';
import 'package:get/get.dart';

class CenterController extends SuperController<CenterModel> {
  final AppRepository<CenterModel> centerRepository;

  CenterController({required this.centerRepository});

  var panelIsExpanded = false.obs;

  var sidoDropdownValues =
      SidoEnum.values.map((sido) => Sido.getSidoName(sido)).toList();

  var sidoValue = ''.obs;
  var addressValue = ''.obs;

  var originData = <VaccinationCenter>[];

  @override
  void onInit() {
    super.onInit();
    append(() => centerRepository.fetchData);

    ever(sidoValue, (_) {
      filterCenter();
    });

    debounce(addressValue, (_) {
      filterCenter();
    }, time: Duration(milliseconds: 500));
  }

  @override
  void onDetached() {}

  @override
  void onInactive() {}

  @override
  void onPaused() {}

  @override
  void onResumed() {}

  filterCenter() {
    print('filterCenter');

    if (originData.length == 0) {
      originData = List.from(state!.data);
    }

    var filteredData = List<VaccinationCenter>.from(originData);

    if (sidoValue.value != '' && sidoValue.value != '전국') {
      filteredData = filteredData
          .where((center) => center.sido == sidoValue.value)
          .toList();
    }

    if (addressValue != '') {
      filteredData = filteredData
          .where((center) => center.address.contains(addressValue.value))
          .toList();
    }

    change(state!.copyWith(data: filteredData));
  }
}
