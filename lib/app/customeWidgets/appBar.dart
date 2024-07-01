import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/images.dart';
import 'package:velocity_x/velocity_x.dart';

Widget appBar(String appBarName) {
  return Row(
    mainAxisAlignment: mainbetween,
    children: [
      Row(
        children: [
          GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(Icons.arrow_back)),
          10.widthBox,
          CustomText(
              text: appBarName,
              fontSize: 22.sp,
              color: primaycolor,
              fontWeight: FontWeight.w600),
        ],
      ),
      const CircleAvatar(
        backgroundImage: AssetImage(introimg),
      ),
    ],
  );
}
