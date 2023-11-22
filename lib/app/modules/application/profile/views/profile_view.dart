import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peanut/app/core/services/base/preferences.dart';
import 'package:peanut/app/core/services/controller/base_controller.dart';
import 'package:peanut/app/widgets/custom_btn.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileView'),
        centerTitle: true,
      ),
      body: Center(
        child: PrimaryBtn(
          child: const Text("LogOut"),
          onPressed: () {
            BaseController.to.logout();
          },
        ),
      ),
    );
  }
}
