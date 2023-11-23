import 'package:get/get.dart';
import 'package:peanut/app/core/config/theme/style.dart';
import 'package:peanut/app/core/services/base/preferences.dart';
import 'package:peanut/app/core/services/controller/base_controller.dart';
import 'package:peanut/app/data/models/trade/trade_model.dart';
import 'package:peanut/app/data/repository/trade_repo.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  List<TradeModel> tradeList = [];

  getTradeList() async {
    // tradeList = await TradeRepo.getTrades(
    //     id: Preferences.userId, token: Preferences.token);
    // kLogger.i(tradeList[0].currentPrice);

    var res = await BaseController.to.apiService.makePostRequest(
        'https://peanut.ifxdb.com/api/ClientCabinetBasic/GetOpenTrades',
        {"login": Preferences.userId, "token": Preferences.token});

    kLogger.i("message");
    kLogger.i("message");
    kLogger.i("message");
    kLogger.i(res.data);
  }

  @override
  void onInit() {
    getTradeList();
    super.onInit();
  }
}
