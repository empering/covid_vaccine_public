import 'package:covid_vaccine/main.dart';
import 'package:get/get.dart';

class SettingService extends GetxService {
  final StoreType _storeType;

  SettingService(this._storeType);

  StoreType get storeType => _storeType;
}
