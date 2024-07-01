import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/backButton.dart';
import 'package:kidslearning/app/customeWidgets/customButton.dart';
import 'package:kidslearning/app/customeWidgets/customTextfields.dart';
import 'package:kidslearning/app/customeWidgets/validators.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/paddings.dart';
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
          padding: pad16,
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: crosstart,
              children: [
                50.heightBox,
                backButton("Create New Password"),
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
