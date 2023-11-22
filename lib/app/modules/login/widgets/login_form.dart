import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peanut/app/core/config/theme/style.dart';
import 'package:peanut/app/core/utils/int_extensions.dart';
import 'package:peanut/app/modules/login/controllers/login_controller.dart';
import 'package:peanut/app/widgets/custom_textfield.dart';

import '../../../core/config/theme/color.dart';

class LoginForm extends GetView<LoginController> {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Form(
      key: controller.formKey,
        child: Column(
      children: [

   
        CustomTextField(
          controller: controller.loginController,
          label: const Text("User Id"),
          keyboardType: TextInputType.number,
           validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter your valid Id';
              }
              return null;
            },
        ),
        GetBuilder<LoginController>(builder: (controller) {
          bool isHide = controller.passObscure;
          return CustomTextField(
            controller: controller.passwordController,
            label: const Text("Password"),
            obscureText: isHide,
            suffixIcon: GestureDetector(
              onTap: () {
                controller.passObscure = !controller.passObscure;
                controller.update();
              },
              child: isHide
                  ? const Icon(Icons.remove_red_eye_outlined, color: kTextColor)
                  : const Icon(Icons.visibility_off_outlined,
                      color: kTextColor),
            ),
             validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter your valid Password';
              }else if(value.length <7){
                 return 'Password should be 8 carecter';
              }
              return null;
            },
          );
        }),
      ],
    ));
  }
}



