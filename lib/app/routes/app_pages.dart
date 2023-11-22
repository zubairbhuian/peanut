import 'package:get/get.dart';
import 'package:peanut/app/core/middleware/router_welcome.dart';

import '../modules/application/bindings/application_binding.dart';
import '../modules/application/home/bindings/home_binding.dart';
import '../modules/application/home/views/home_view.dart';
import '../modules/application/profile/bindings/profile_binding.dart';
import '../modules/application/profile/views/profile_view.dart';
import '../modules/application/profit/bindings/profit_binding.dart';
import '../modules/application/profit/views/profit_view.dart';
import '../modules/application/views/application_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
      middlewares: [
        RouteWlcomMiddleware()
      ]
    ),
    GetPage(
      name: _Paths.APPLICATION,
      page: () => const ApplicationView(),
      binding: ApplicationBinding(),
      children: [
        GetPage(
          name: _Paths.HOME,
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: _Paths.PROFILE,
          page: () => const ProfileView(),
          binding: ProfileBinding(),
        ),
        GetPage(
          name: _Paths.PROFIT,
          page: () => const ProfitView(),
          binding: ProfitBinding(),
        ),
      ],
    ),
  ];
}
