import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/customButton.dart';
import 'package:kidslearning/app/customeWidgets/customTextfields.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/customeWidgets/validators.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/routes/app_pages.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/createnewpassword_controller.dart';

class CreatenewpasswordView extends GetView<CreatenewpasswordController> {
  const CreatenewpasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: whitecolor,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: crosstart,
              children: [
                50.heightBox,
                const Icon(Icons.arrow_back),
                20.heightBox,
                CustomText(
                    text: "Create New Password",
                    fontSize: 26.sp,
                    color: primaycolor,
                    fontWeight: FontWeight.bold),
                30.heightBox,
                Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      CustomTextFieldForPassword(
                          labelText: "New Password",
                          hintText: "Enter new password",
                          controller: controller.newpasswordController.value,
                          validator: Validators.validatePassword),
                      20.heightBox,
                      CustomTextFieldForPassword(
                          labelText: "Confirm Password",
                          hintText: "Enter confirm password",
                          controller: controller.confirmController.value,
                          validator: Validators.validatePassword),
                    ],
                  ),
                ),
                const Spacer(),
                CustomButton(
                    text: "Confirm",
                    onPressed: () {
                      if (controller.formKey.currentState!.validate()) {
                        controller.createNewPassword();
                      }
                    }),
                100.heightBox,
              ],
            ),
          ),
        ));
  }
}
