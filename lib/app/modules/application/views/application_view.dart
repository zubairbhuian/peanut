import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peanut/app/core/config/theme/color.dart';

import '../controllers/application_controller.dart';

class ApplicationView extends GetView<ApplicationController> {
  const ApplicationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: kWhite,
       
        body: GetBuilder<ApplicationController>(builder: (controller) {
          return controller.pagesList[controller.pageIndex];
        }),
        bottomNavigationBar:
            GetBuilder<ApplicationController>(builder: (controller) {
          return CurvedNavigationBar(
              backgroundColor: Colors.transparent,
              index: controller.pageIndex,
              color: kBlack,
              buttonBackgroundColor: kBlack,
              animationCurve: Curves.ease,
              animationDuration: const Duration(milliseconds: 500),
              onTap: (index) {
                controller.pageIndex = index;
                controller.update();
              },
              items: controller.iconList);
        }),
      ),
    );
  }
}
