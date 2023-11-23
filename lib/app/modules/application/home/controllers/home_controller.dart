import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peanut/app/core/services/base/preferences.dart';
import 'package:peanut/app/data/models/trade/trade_model.dart';
import 'package:peanut/app/data/repository/trade_repo.dart';
import 'package:peanut/app/modules/application/profit/controllers/profit_controller.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  List<TradeModel>? tradeList;
  ScrollController scrollController = ScrollController();

  getTradeList() async {
    tradeList = null;
    update();
    tradeList = await TradeRepo.getTrades(
        id: Preferences.userId, token: Preferences.token);
    if (tradeList != null) {
      ProfitController.to.userProfit = calculateTotalProfit(tradeList!);
      ProfitController.to.onUpdate();
    }
    update();
  }

  // Function to be called when scrolling
  void scrollListener() {
    // Check if the user has reached the top or bottom
    if (scrollController.position.pixels == 0) {
      // Call your function for scrolling to the top
      getTradeList();
    } else if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      // Call your function for scrolling to the bottom
      getTradeList();
    }
  }

  double calculateTotalProfit(List<TradeModel> trades) {
    return trades.fold(0, (sum, trade) => sum + trade.profit);
  }

  @override
  void onInit() {
    scrollController.addListener(scrollListener);
    getTradeList();
    super.onInit();
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
