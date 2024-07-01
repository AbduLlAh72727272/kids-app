import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:kidslearning/app/customeWidgets/appBar.dart';
import 'package:kidslearning/app/customeWidgets/customButton.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/scanned_screen_controller.dart';

class ScannedScreenView extends GetView<ScannedScreenController> {
  const ScannedScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.heightBox,
            appBar("Scan"),
            40.heightBox,
            CustomText(
                text: 'Student Name',
                fontSize: 14.sp,
                color: blackcolor,
                fontWeight: FontWeight.bold),
            Obx(() => Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: controller.selectedStudent.value,
                          fontSize: 14.sp,
                          color: blackcolor,
                          fontWeight: FontWeight.w300),
                      const Divider(thickness: 1, color: Colors.grey),
                    ],
                  ),
                )),
            const SizedBox(height: 16),
            CustomText(
                text: 'Enter Date',
                fontSize: 14.sp,
                color: blackcolor,
                fontWeight: FontWeight.bold),
            Obx(() => Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DateFormat.yMMMd()
                            .format(controller.selectedDate.value),
                        style: const TextStyle(color: Colors.black),
                      ),
                      const Divider(thickness: 1, color: Colors.grey),
                    ],
                  ),
                )),
            const SizedBox(height: 16),
            const Text('Check In time',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
            Obx(() => Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.selectedTime.value.format(context),
                        style: const TextStyle(color: Colors.black),
                      ),
                      const Divider(thickness: 1, color: Colors.grey),
                    ],
                  ),
                )),
            const SizedBox(height: 16),
            const Text('Note',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add a note',
                    style: TextStyle(color: Colors.black),
                  ),
                  Divider(thickness: 1, color: Colors.grey),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Center(child: CustomButton(text: "Submit", onPressed: () {})),
          ],
        ),
      ),
    );
  }
}
