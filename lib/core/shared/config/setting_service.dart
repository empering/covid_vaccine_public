import 'package:covid_vaccine/main.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingService extends GetxService {
  final StoreType _storeType;
  late SharedPreferences sharedPreferences;

  StoreType get storeType => _storeType;

  SettingService(this._storeType);

  Future<SettingService> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}
