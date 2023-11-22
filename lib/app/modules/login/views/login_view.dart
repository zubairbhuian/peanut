import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:peanut/app/core/config/theme/style.dart';
import 'package:peanut/app/core/utils/int_extensions.dart';
import 'package:peanut/app/modules/login/widgets/login_form.dart';
import 'package:peanut/app/widgets/custom_btn.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool isKeybord = MediaQuery.of(context).viewInsets.bottom > 0;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          //  ***** Form area ****
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: isKeybord ? 100.h : 250.h,
                ),
                Text(
                  'Login',
                  style: kHeadlineMedium,
                ),
                32.height,
                const LoginForm(),
              ],
            ),
          )),
          //  ***** login btn area ****
          SizedBox(
            height: 100,
            child: Center(
                child: PrimaryBtn(
              width: double.infinity,
              onPressed: () {
                if (controller.formKey.currentState!.validate()) {
                  controller.onLogin();
                }
              },
              child: const Text("Login"),
            )),
          )
        ],
      ),
    ));
  }
}
