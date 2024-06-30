import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/customButton.dart';
import 'package:kidslearning/app/customeWidgets/customTextfields.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/customeWidgets/validators.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../resources/colors.dart';
import '../controllers/forget_password_controller.dart';

class ForgetPasswordView extends GetView<ForgetPasswordController> {
  const ForgetPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: whitecolor,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: crosstart,
            children: [
              40.heightBox,
              GestureDetector(onTap: (){
                Get.back();
              },child: const Icon(Icons.arrow_back)),
              20.heightBox,
              CustomText(
                  text: "Forget Password",
                  fontSize: 26.sp,
                  color: primaycolor,
                  fontWeight: FontWeight.bold),
              30.heightBox,
              Form(
                key: controller.formKey,
                child: CustomTextField(
                    labelText: "Enter Email Id",
                    hintText: "Enter Email",
                    controller: controller.emailController.value,
                    validator: Validators.emailValidator),
              ),
              const Spacer(),
              CustomButton(
                  text: "Next",
                  onPressed: () {
                    if (controller.formKey.currentState!.validate()) {
                      controller.sentOtp();
                    }
                   

                  }),
              100.heightBox,
            ],
          ),
        ));
  }
}
