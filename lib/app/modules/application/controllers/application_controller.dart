import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peanut/app/core/config/theme/color.dart';
import 'package:peanut/app/modules/application/home/views/home_view.dart';
import 'package:peanut/app/modules/application/profile/views/profile_view.dart';
import 'package:peanut/app/modules/application/profit/views/profit_view.dart';

import '../../../core/config/theme/style.dart';

class ApplicationController extends GetxController {
  static ApplicationController get to => Get.find();

  int pageIndex = 2;
  final PageController pageController = PageController();
  final List<Widget> pagesList = [
    const HomeView(),
    const ProfitView(),
    const ProfileView(),
  ];
  final List<Widget> iconList = [
    const Icon(Icons.home_filled,color: kWhite,),
    const Icon(Icons.wallet_giftcard,color: kWhite,),
    const Icon(Icons.person,color: kWhite,),
  ];
}
