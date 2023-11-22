import 'package:peanut/app/core/config/theme/style.dart';
import 'package:peanut/app/core/services/controller/base_controller.dart';
import 'package:peanut/app/core/services/urls.dart';
import 'package:peanut/app/data/models/base/base_model.dart';
import 'package:peanut/app/data/models/user/user_data_model.dart';

class UserInfoRepo {
  static Future<UserDataModel?> getUserInfo(
      {required String id, required String token}) async {
    /// data
    Map<String, dynamic> data = {"login": id, "token": token};
    try {
      // **** api call ****
      BaseModel res = await BaseController.to.apiService
          .makePostRequest(Urls.getAccountInfo, data);
      if (res.statusCode == 200) {
        var resData = UserDataModel.fromJson(res.data);
        return resData;
      } else if (res.statusCode == 500) {
        BaseController.to.logout();
      }
    } catch (err) {
      kLogger.i(" getUserInfo :$err");
    }
    return null;
  }

  static Future<String> getLastFourNumbersPhone(
      {required String id, required String token}) async {
    /// data
    Map<String, dynamic> data = {"login": id, "token": token};
    try {
      // **** api call ****
      BaseModel res = await BaseController.to.apiService
          .makePostRequest(Urls.getLastFourNumbersPhone, data);
          // kLogger.e("ZZZZZZZZZZZZ");
          // kLogger.e(res.statusCode);
          // kLogger.e(res);

      if (res.statusCode == 200) {
        
        var resData = res.data;
        return resData;
      } else if (res.statusCode == 500) {
        BaseController.to.logout();
      }
    } catch (err) {
      kLogger.i("getLastFourNumbersPhone Err :$err");
    }
    return '';
  }
}
