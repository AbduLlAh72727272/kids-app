import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/customButton.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/icons.dart';
import 'package:kidslearning/app/routes/app_pages.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/authentication_success_controller.dart';

class AuthenticationSuccessView
    extends GetView<AuthenticationSuccessController> {
  const AuthenticationSuccessView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: maincenter,
          children: [
            100.heightBox,
            Image.asset(
              success,
              width: 100,
              color: greencolor,
            ),
            30.heightBox,
            CustomText(
                text: "Success!",
                fontSize: 22.sp,
                color: const Color(0xff323232),
                fontWeight: FontWeight.w700),
            10.heightBox,
            SizedBox(
              width: 300,
              child: Text(
                "Congratulations! You have been successfully authenticated",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.sp,
                    color: textfieldgrey,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const Spacer(),
            CustomButton(
                text: "Next",
                onPressed: () {
                  Get.toNamed(Routes.CREATENEWPASSWORD);
                }),
            100.heightBox
          ],
        ),
      )),
    );
  }
}
