// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class RouteWlcomMiddleware extends GetMiddleware {
//   @override
//   RouteSettings? redirect(String? route) {
//     if (Preferences.token.isNotEmpty) {
//       // user has token
//       // return should be application screen
//       // kLogger.e("user has token");
//       return const RouteSettings(name: AppRoutes.application);
//     } else {
//       kLogger.e(Preferences.token);
//       // user token is empty
//       // return should be login screen
//       // kLogger.e("user token is empty");
//       return null;
//     }
//   }
// }
