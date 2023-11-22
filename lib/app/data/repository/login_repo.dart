import 'package:peanut/app/core/config/theme/style.dart';
import 'package:peanut/app/core/services/controller/base_controller.dart';
import 'package:peanut/app/core/services/urls.dart';
import 'package:peanut/app/widgets/popup_dialogs.dart';

import '../models/base/base_model.dart';

class LoginRepo {
 static Future<bool> login({required String id, required String pass}) async {
    /// data
    Map<String, dynamic> data = {"login": id, "password": pass};
    try {
      // start loading
      PopupDialog.showLoadingDialog();
      // api call
      BaseModel res =
          await BaseController.to.apiService.makePostRequest(Urls.login, data);
      // hide loading
      PopupDialog.closeLoadingDialog();
      if (res.statusCode == 200) {
        return true;
      } else if (res.statusCode == 401) {
        PopupDialog.showErrorMessage("invalid user id or password");
        return false;
      } else if (res.statusCode == 500) {
        PopupDialog.showErrorMessage("Internal server error,try again later");
        return false;
      }
      return false;
    } catch (err) {
      kLogger.i("Login Err :$err");
      PopupDialog.closeLoadingDialog();
      PopupDialog.showErrorMessage("Something went wrong,try again later");
      return false;
    }
  }
}
