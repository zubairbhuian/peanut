import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peanut/app/core/config/theme/style.dart';
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
        PopupDialog.showLoadingDialog();
        BaseModel res = await BaseController.to.apiService
            .makePostRequest(Urls.login, data);
        if (res.statusCode == 200) {
          Preferences.token = res.data["token"];
          Get.offAllNamed(Routes.APPLICATION);
          PopupDialog.closeLoadingDialog();
        } else if (res.statusCode == 401) {
          kLogger.i("message");
          PopupDialog.closeLoadingDialog();
        }
      } catch (err) {
        kLogger.e("Login Err :$err");
        PopupDialog.closeLoadingDialog();
      }
    }
  }
}
