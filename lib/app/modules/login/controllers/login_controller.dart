import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peanut/app/core/config/theme/style.dart';
import 'package:peanut/app/core/services/base/api_service.dart';
import 'package:peanut/app/core/services/base/preferences.dart';
import 'package:peanut/app/core/services/controller/base_controller.dart';
import 'package:peanut/app/core/services/urls.dart';
import 'package:peanut/app/data/models/base/base_model.dart';
import 'package:peanut/app/data/repository/login_repo.dart';
import 'package:peanut/app/routes/app_pages.dart';
import 'package:peanut/app/widgets/popup_dialogs.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find();

  final formKey = GlobalKey<FormState>();

  bool passObscure = true;
  final loginController = TextEditingController(text: "2088888");
  final passwordController = TextEditingController(text: "ral11lod");
 
  void onLogin() async {
    bool isloginsuccess = await LoginRepo.login(
        id: loginController.text, pass: passwordController.text);
    if (isloginsuccess) {
      Get.offAllNamed(Routes.APPLICATION);
    }
  }
}
