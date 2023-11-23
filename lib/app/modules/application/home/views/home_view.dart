import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peanut/app/core/config/theme/style.dart';
import 'package:peanut/app/core/utils/int_extensions.dart';
import 'package:peanut/app/modules/application/home/widgets/home_card_row.dart';
import 'package:peanut/app/widgets/app_indecator.dart';
import 'package:peanut/app/widgets/appbar.dart';
import 'package:peanut/app/widgets/card.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Home'),
        centerTitle: true,
        isBackBtnShow: false,
      ),
      body: GetBuilder<HomeController>(builder: (controller) {
        var data = controller.tradeList;
        if (data == null) return const Center(child: AppIndecator());
        return SingleChildScrollView(
          controller: controller.scrollController,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(children: [
            ...List.generate(data.length, (index) {
              return AppCard(
                  child: Column(
                children: [
                  // header 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("User Id",style: kTitleLarge,),
                      Text(data[index].login.toString(),style: kTitleLarge,),
                    ],
                  ),
                  const Divider(
                    thickness: .5,
                  ),
                  // card body
                  HomeCardRow(
                    title: "Symbol",
                    value: data[index].symbol,
                  ),
                   HomeCardRow(
                    title: "CurrentPrice",
                    value: data[index].currentPrice.toString(),
                  ),
                   HomeCardRow(
                    title: "Digits",
                    value: data[index].digits.toString(),
                  ),
                  HomeCardRow(
                    title: "OpenPrice",
                    value: data[index].openPrice.toString(),
                  ),
                  HomeCardRow(
                    title: "Profit",
                    value: data[index].profit.toString(),
                  ),
                   HomeCardRow(
                    title: "Volume",
                    value: data[index].volume.toString(),
                  ),
                   HomeCardRow(
                    title: "OpenTime",
                    value: data[index].openTime.toString(),
                  ),
                    HomeCardRow(
                    title: "SL",
                    value: data[index].sl.toString(),
                  ),
                    HomeCardRow(
                    title: "Swaps",
                    value: data[index].swaps.toString(),
                  ),
                  HomeCardRow(
                    title: "Ticket",
                    value: data[index].ticket.toString(),
                  ),
                  
                ],
              )).marginOnly(bottom: 12);
            }),
            80.height
          ]),
        );
      }),
    );
  }
}
