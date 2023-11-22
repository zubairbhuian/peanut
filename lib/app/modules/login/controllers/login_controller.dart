import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peanut/app/core/services/base/preferences.dart';
import 'package:peanut/app/data/repository/login_repo.dart';
import 'package:peanut/app/routes/app_pages.dart';


class LoginController extends GetxController {
  static LoginController get to => Get.find();

  final formKey = GlobalKey<FormState>();

  bool passObscure = true;
  final loginController = TextEditingController(text: "2088888");
  final passwordController = TextEditingController(text: "ral11lod");
 

 /// **** Login Function ****
  void onLogin() async {
    bool isloginsuccess = await LoginRepo.login(
        id: loginController.text, pass: passwordController.text);
    if (isloginsuccess) {
      // Route APPLICATION 
      Get.offAllNamed(Routes.APPLICATION);
      // Store user id
      Preferences.userId = loginController.text;
    }
  }
}
