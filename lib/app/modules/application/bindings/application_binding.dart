import 'package:get/get.dart';

import '../controllers/application_controller.dart';

class ApplicationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationController>(
      () => ApplicationController(),
    );
  }
}
