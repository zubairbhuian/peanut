import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peanut/app/core/config/theme/color.dart';
import 'package:peanut/app/core/utils/int_extensions.dart';
import 'package:peanut/app/modules/application/profile/widgets/profile_row.dart';
import 'package:peanut/app/widgets/app_indecator.dart';
import 'package:peanut/app/widgets/appbar.dart';
import 'package:peanut/app/widgets/card.dart';
import 'package:peanut/app/widgets/custom_btn.dart';
import 'package:peanut/app/widgets/popup_dialogs.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Profile'),
        centerTitle: true,
        isBackBtnShow: false,
      ),
      body: GetBuilder<ProfileController>(builder: (controller) {
        var data = controller.userData;
        if (data == null) return const Center(child: AppIndecator());
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
          child: Column(
            children: [
               AppCard(child:Column(children: [
                ProfileRow(title: "Name",value: data.name,),
                ProfileRow(title: "Balance",value: data.balance.toString(),),
                ProfileRow(title: "Currency",value: data.currency.toString(),),
                ProfileRow(title: "CurrentTradesCount",value: data.currentTradesCount.toString(),),
                ProfileRow(title: "Equity",value: data.equity.toString(),),
                ProfileRow(title: "FreeMargin",value: data.freeMargin.toString(),),
                ProfileRow(title: "Leverage",value: data.leverage.toString(),),
                //address
                ProfileRow(title: "Phone",value: controller.phoneNumber,),
                ProfileRow(title: "Address",value: data.address,),
                ProfileRow(title: "City",value: data.city,),
                ProfileRow(title: "Country",value: data.country,),
                ProfileRow(title: "ZipCode",value: data.zipCode,isDivider: false,),
                ],)),
              24.height,
              Center(
                child: PrimaryBtn(
                  width: double.infinity,
                  color: kRed,
                  child: const Text("LogOut"),
                  onPressed: () {
                    PopupDialog.logOutDialog();
                  },
                ),
                
              ),
              80.height,
            ],
          ),
        );
      }),
    );
  }
}
