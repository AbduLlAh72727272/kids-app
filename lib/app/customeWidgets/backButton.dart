import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:velocity_x/velocity_x.dart';

Widget backButton(String screenName) {
  return Column(
    crossAxisAlignment: crosstart,
    children: [
      GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back)),
      20.heightBox,
      CustomText(
          text: screenName,
          fontSize: 26.sp,
          color: primaycolor,
          fontWeight: FontWeight.bold)
    ],
  );
}
