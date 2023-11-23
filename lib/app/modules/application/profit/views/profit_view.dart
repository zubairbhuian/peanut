import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peanut/app/core/config/theme/style.dart';
import 'package:peanut/app/core/utils/common_func.dart';
import 'package:peanut/app/widgets/app_indecator.dart';
import 'package:peanut/app/widgets/appbar.dart';
import 'package:peanut/app/widgets/card.dart';

import '../controllers/profit_controller.dart';

class ProfitView extends GetView<ProfitController> {
  const ProfitView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Profit'),
        centerTitle: true,
        isBackBtnShow: false,
      ),
      body: GetBuilder<ProfitController>(builder: (controller) {
        var data = controller.userProfit;
        if (data == null) return const Center(child: AppIndecator());
        return Center(
          child: AppCard(
              onTap: () {},
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
              child: Text(
                CommonFunc.roundedNumber(data).toString(),
                style: kHeadlineLarge,
              )),
        );
      }),
    );
  }
}
