import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/appBar.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/icons.dart';
import 'package:kidslearning/app/resources/paddings.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/actvities_controller.dart';

class ActvitiesView extends GetView<ActvitiesController> {
  const ActvitiesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whitecolor,
        body: Padding(
          padding: pad16,
          child: ListView(
            children: [
              appBar("Activities"),
              30.heightBox,
              Row(
                mainAxisAlignment: mainbetween,
                children: [
                  SizedBox(
                    width: 130.h,
                    child: Column(
                      crossAxisAlignment: crosstart,
                      children: [
                        CustomText(
                            text: 'Nanny name',
                            fontSize: 14.sp,
                            color: blackcolor,
                            fontWeight: FontWeight.bold),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Select",
                              hintStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: blackcolor,
                                  fontWeight: FontWeight.normal)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 130.h,
                    child: Column(
                      crossAxisAlignment: crosstart,
                      children: [
                        CustomText(
                            text: 'Enter date',
                            fontSize: 14.sp,
                            color: blackcolor,
                            fontWeight: FontWeight.bold),
                        Obx(
                          () => TextField(
                            style: const TextStyle(color: blackcolor),
                            onTap: () {
                              selectDate(context);
                            },
                            readOnly: true,
                            controller: controller.dateController.value,
                            decoration: InputDecoration(
                                suffixIcon: Transform.scale(
                                  scale: 0.5, // Scale down the icon
                                  child: Image.asset(
                                    calender, // Replace with your asset path
                                    width: 10,
                                    height: 10,
                                  ),
                                ),
                                hintText: "Select",
                                hintStyle: TextStyle(
                                    fontSize: 14.sp,
                                    color: blackcolor,
                                    fontWeight: FontWeight.normal)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              20.heightBox,
              Row(
                mainAxisAlignment: mainbetween,
                children: [
                  SizedBox(
                    width: 130.h,
                    child: Column(
                      crossAxisAlignment: crosstart,
                      children: [
                        CustomText(
                            text: 'Check in time',
                            fontSize: 14.sp,
                            color: blackcolor,
                            fontWeight: FontWeight.bold),
                        TextField(
                          style: const TextStyle(color: blackcolor),
                          onTap: () async {
                            TimeOfDay? pickedTime = await showTimePicker(
                              context: context,
                              initialTime: controller.selectedTime.value,
                            );
                            if (pickedTime != null) {
                              controller.setCheckinTime(pickedTime);
                            }
                          },
                          readOnly: true,
                          controller: controller.checkinController.value,
                          decoration: InputDecoration(
                              suffixIcon: const Icon(
                                Icons.timer_outlined,
                                color: textfieldgrey,
                              ),
                              hintText: "Select",
                              hintStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: blackcolor,
                                  fontWeight: FontWeight.normal)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 130.h,
                    child: Column(
                      crossAxisAlignment: crosstart,
                      children: [
                        CustomText(
                            text: 'Check out time',
                            fontSize: 14.sp,
                            color: blackcolor,
                            fontWeight: FontWeight.bold),
                        Obx(
                          () => TextField(
                            style: const TextStyle(color: blackcolor),
                            onTap: () async {
                              TimeOfDay? pickedTime = await showTimePicker(
                                context: context,
                                initialTime: controller.selectedTime.value,
                              );
                              if (pickedTime != null) {
                                controller.setCheckoutTime(pickedTime);
                              }
                            },
                            readOnly: true,
                            controller: controller.checkoutController.value,
                            decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.timer_outlined,
                                  color: textfieldgrey,
                                ),
                                hintText: "Select",
                                hintStyle: TextStyle(
                                    fontSize: 14.sp,
                                    color: blackcolor,
                                    fontWeight: FontWeight.normal)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              20.heightBox,
              Column(
                crossAxisAlignment: crossend,
                children: [
                  SizedBox(
                    width: 130.w,
                    child: Row(
                  
                      mainAxisAlignment: mainend,
                      children: [
                        Text(
                          "Add new Card",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w300,
                              color: blackcolor),
                        ),
                        5.widthBox,
                        Icon(
                          Icons.add,
                          color: blackcolor,
                          size: 20.sp,
                        )
                      ],
                    ),
                  ).box.white.outerShadow.padding(defaultpad).roundedSM.make(),
                ],
              )
            ],
          ),
        ));
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: controller.selectedDate.value,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != controller.selectedDate.value) {
      controller.selectDate(picked);
    }
  }
}
