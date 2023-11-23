import 'package:get/get.dart';
class ProfitController extends GetxController {
  static ProfitController get to => Get.find();

  double? userProfit ;

  onUpdate() {
    update();
  }
}
