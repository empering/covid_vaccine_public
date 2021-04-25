import 'package:get/get.dart';

abstract class ApiProvider<T> {
  Future<Response<T>> fetchData(String apiPath, {Map<String, dynamic>? query});

  String get apiKey;
}
