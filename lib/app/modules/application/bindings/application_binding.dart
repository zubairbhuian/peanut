import 'package:get/get.dart';
import 'package:peanut/app/modules/application/home/controllers/home_controller.dart';
import 'package:peanut/app/modules/application/profile/controllers/profile_controller.dart';
import 'package:peanut/app/modules/application/profit/controllers/profit_controller.dart';

import '../controllers/application_controller.dart';

class ApplicationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApplicationController());
    Get.put(HomeController());
    Get.put(ProfitController());
    Get.put(ProfileController());
  }
}
