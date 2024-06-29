import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/customButton.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/images.dart';
import 'package:kidslearning/app/resources/paddings.dart';
import 'package:kidslearning/app/routes/app_pages.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: pad20,
        child: Column(
          mainAxisAlignment: maincenter,
          children: [
            Image.asset(
              introimg,
              width: 300,
            ),
            20.verticalSpace,
            CustomText(
                text: "Welcome To Kids Center",
                fontSize: 14.sp,
                color: primaycolor,
                fontWeight: FontWeight.w700),
            5.heightBox,
            CustomText(
                text: "Nannies supervise while parents monitor.",
                fontSize: 12.sp,
                color: textfieldgrey,
                fontWeight: FontWeight.w400),
            70.heightBox,
            CustomButton(text: "Sign In", onPressed: () {
              Get.offAllNamed( Routes.SIGNIN);
            })
          ],
        ),
      )),
    );
  }
}
