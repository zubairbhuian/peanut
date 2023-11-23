import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:peanut/app/core/config/theme/style.dart';
import 'package:peanut/app/data/models/base/base_model.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});
  Future<BaseModel> makePostRequest(
      String url, Map<String, dynamic> data) async {
    try {
      var res = await dio.post(url,
          data: data,
          options: Options(
            validateStatus: (_) => true,
            contentType: Headers.jsonContentType,
            responseType: ResponseType.json,
          ));
      if (res.statusCode == 200) {}

      if (kDebugMode) {
        kLogger.d(url);
        kLogger.d(data);
        kLogger.d(res.data);
      }
      return BaseModel(statusCode: res.statusCode, data: res.data);
    } catch (e) {
      kLogger.e(e);
      return BaseModel(message: e.toString());
    }
  }
}
