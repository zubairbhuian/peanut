import 'package:peanut/app/core/config/theme/style.dart';
import 'package:peanut/app/core/services/controller/base_controller.dart';
import 'package:peanut/app/core/services/urls.dart';
import 'package:peanut/app/data/models/base/base_model.dart';
import 'package:peanut/app/data/models/trade/trade_model.dart';

class TradeRepo {
  static Future<List<TradeModel>> getTrades(
      {required String id, required String token}) async {
    /// data
    Map<String, dynamic> data = {"login": id, "token": token};
    try {
      // **** api call ****
      BaseModel res = await BaseController.to.apiService
          .makePostRequest(Urls.getOpenTrades, data);
      if (res.statusCode == 200 && res.data.length > 0) {
        var resData = (res.data as List)
            .map((item) => TradeModel.fromJson(item))
            .toList();
        return resData;
      } else if (res.statusCode == 500) {
        BaseController.to.logout();
      }
    } catch (err) {
      kLogger.i(" getUserInfo :$err");
    }
    return [];
  }
}
