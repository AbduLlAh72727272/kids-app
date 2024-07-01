import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/appBar.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/paddings.dart';
import 'package:kidslearning/app/routes/app_pages.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/nanny_details_controller.dart';

class NannyDetailsView extends GetView<NannyDetailsController> {
  const NannyDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: pad16,
      child: ListView(
        children: [
          10.heightBox,
          appBar("Nanny Details"),
          40.heightBox,
          CustomText(
              text: 'Nanny name',
              fontSize: 14.sp,
              color: blackcolor,
              fontWeight: FontWeight.bold),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: "Ali",
                    fontSize: 14.sp,
                    color: blackcolor,
                    fontWeight: FontWeight.w300),
                const Divider(thickness: 1, color: Colors.grey),
              ],
            ),
          ),
          20.heightBox,
          CustomText(
              text: 'Qualification',
              fontSize: 14.sp,
              color: blackcolor,
              fontWeight: FontWeight.bold),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: "BS",
                    fontSize: 14.sp,
                    color: blackcolor,
                    fontWeight: FontWeight.w300),
                const Divider(thickness: 1, color: Colors.grey),
              ],
            ),
          ),
          20.heightBox,
          CustomText(
              text: 'Reg number',
              fontSize: 14.sp,
              color: blackcolor,
              fontWeight: FontWeight.bold),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: "#0393DFER4",
                    fontSize: 14.sp,
                    color: blackcolor,
                    fontWeight: FontWeight.w300),
                const Divider(thickness: 1, color: Colors.grey),
              ],
            ),
          ),
          20.heightBox,
          CustomText(
              text: 'Phone number',
              fontSize: 14.sp,
              color: blackcolor,
              fontWeight: FontWeight.bold),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: "+923115340883",
                    fontSize: 14.sp,
                    color: blackcolor,
                    fontWeight: FontWeight.w300),
                const Divider(thickness: 1, color: Colors.grey),
              ],
            ),
          ),
          20.heightBox,
          CustomText(
              text: 'Email',
              fontSize: 14.sp,
              color: blackcolor,
              fontWeight: FontWeight.bold),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: "abdulsalam.tech1@gmail.com",
                    fontSize: 14.sp,
                    color: blackcolor,
                    fontWeight: FontWeight.w300),
                const Divider(thickness: 1, color: Colors.grey),
              ],
            ),
          ),
          20.heightBox,
          CustomText(
              text: 'Password',
              fontSize: 14.sp,
              color: blackcolor,
              fontWeight: FontWeight.bold),
          Container(
            height: 60.h,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.CREATENEWPASSWORD);
                  },
                  child: Row(
                    mainAxisAlignment: mainbetween,
                    children: [
                      CustomText(
                          text: "Change password",
                          fontSize: 14.sp,
                          color: blackcolor,
                          fontWeight: FontWeight.w300),
                      const Icon(
                        Icons.lock_outline,
                        color: textfieldgrey,
                      )
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.CREATENEWPASSWORD);
                    },
                    child: const Divider(thickness: 1, color: Colors.grey)),
              ],
            ),
          ).onTap(() {
            Get.toNamed(Routes.CREATENEWPASSWORD);
          }),
        ],
      ),
    ));
  }
}
