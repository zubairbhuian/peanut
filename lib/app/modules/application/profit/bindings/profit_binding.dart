import 'package:get/get.dart';

import '../controllers/profit_controller.dart';

class ProfitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfitController>(
      () => ProfitController(),
    );
  }
}
