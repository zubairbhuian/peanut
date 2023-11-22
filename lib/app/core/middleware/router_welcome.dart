import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peanut/app/core/config/theme/style.dart';
import 'package:peanut/app/core/services/base/preferences.dart';
import 'package:peanut/app/routes/app_pages.dart';

class RouteWlcomMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (Preferences.token.isNotEmpty) {
      // user has token
      // return should be application screen
      // kLogger.e("user has token");
      return const RouteSettings(name: Routes.APPLICATION);
    } else {
      kLogger.e(Preferences.token);
      // user token is empty
      // return should be login screen
      // kLogger.e("user token is empty");
      return null;
    }
  }
}
