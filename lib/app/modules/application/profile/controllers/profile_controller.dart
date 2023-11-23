import 'dart:convert';

import 'package:get/get.dart';
import 'package:peanut/app/core/config/theme/style.dart';
import 'package:peanut/app/core/services/base/preferences.dart';
import 'package:peanut/app/core/services/urls.dart';
import 'package:peanut/app/data/models/user/user_data_model.dart';
import 'package:peanut/app/data/repository/user_info_repo.dart';
import 'package:http/http.dart' as http;

class ProfileController extends GetxController {
  static ProfileController get to => Get.find();

  UserDataModel? userData;
  String phoneNumber = '';

  getUserAlldata() async {
    // get user info
    userData = await UserInfoRepo.getUserInfo(
        id: Preferences.userId, token: Preferences.token);
    update();
    // get user phone
    phoneNumber = await UserInfoRepo.getLastFourNumbersPhone(
        id: Preferences.userId, token: Preferences.token);

    update();

  }

  @override
  void onInit() {
    getUserAlldata();
    super.onInit();
  }
}
