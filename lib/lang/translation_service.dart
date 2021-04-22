import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslationService {
  static Locale? get locale => Get.deviceLocale;
  static final fallbackLocale = Locale('ko', 'KR');
}
