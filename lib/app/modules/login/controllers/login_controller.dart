import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peanut/app/core/config/theme/style.dart';
import 'package:peanut/app/core/services/base/api_service.dart';
import 'package:peanut/app/core/services/base/preferences.dart';
import 'package:peanut/app/core/services/controller/base_controller.dart';
import 'package:peanut/app/core/services/urls.dart';
import 'package:peanut/app/data/models/base/base_model.dart';
import 'package:peanut/app/routes/app_pages.dart';
import 'package:peanut/app/widgets/popup_dialogs.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find();

  final formKey = GlobalKey<FormState>();

  bool passObscure = true;
  final loginController = TextEditingController(text: "2088888");
  final passwordController = TextEditingController(text: "ral11lod");

  void onLogin() async {
    /// data
    Map<String, dynamic> data = {
      "login": loginController.text,
      "password": passwordController.text
    };

    if (formKey.currentState!.validate()) {
      try {
       // Dio dio = Dio();

        // var res = await dio.post(Urls.login, data: data,options: Options(receiveDataWhenStatusError:false));
        // kLogger.e(res.data);
        PopupDialog.showLoadingDialog();
        BaseModel res = await BaseController.to.apiService
            .makePostRequest(Urls.login, data);
        PopupDialog.closeLoadingDialog();
        kLogger.e("res.data");
        kLogger.e(res.data);
        if (res.statusCode == 200) {
          Get.offAllNamed(Routes.APPLICATION);
        } else if (res.statusCode == 401) {
        }
      } catch (err) {
        kLogger.i("Login Err :$err");
        kLogger.e("Login Err :$err");
        PopupDialog.closeLoadingDialog();
      }
    }
  }
}
