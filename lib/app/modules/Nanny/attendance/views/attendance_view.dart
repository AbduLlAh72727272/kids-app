import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:kidslearning/app/customeWidgets/appBar.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/paddings.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/attendance_controller.dart';

class AttendanceView extends GetView<AttendanceController> {
  const AttendanceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: pad16,
      child: ListView(
        children: [
          appBar("Attendance"),
          20.heightBox,
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: 'Student Name',
                    fontSize: 14.sp,
                    color: blackcolor,
                    fontWeight: FontWeight.bold),
                Obx(() => DropdownButton<String>(
                      hint: CustomText(
                          text: "Select",
                          fontSize: 14.sp,
                          color: blackcolor,
                          fontWeight: FontWeight.w300),
                      value: controller.selectedStudent.value.isEmpty
                          ? null
                          : controller.selectedStudent.value,
                      isExpanded: true,
                      items: ['Student 1', 'Student 2', 'Student 3']
                          .map((student) => DropdownMenuItem(
                              value: student,
                              child: CustomText(
                                  text: student,
                                  fontSize: 14.sp,
                                  color: blackcolor,
                                  fontWeight: FontWeight.w300)))
                          .toList(),
                      onChanged: (value) {
                        if (value != null) {
                          controller.setSelectedStudent(value);
                        }
                      },
                    )),
                const SizedBox(height: 20),
                CustomText(
                    text: 'Enter Date',
                    fontSize: 14.sp,
                    color: blackcolor,
                    fontWeight: FontWeight.bold),
                10.heightBox,
                Obx(() => InkWell(
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: controller.selectedDate.value,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101),
                        );
                        if (pickedDate != null) {
                          controller.setSelectedDate(pickedDate);
                        }
                      },
                      child: InputDecorator(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: greyColor)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: greyColor)),
                          hintText: 'Select',
                          suffixIcon: Icon(Icons.calendar_today),
                        ),
                        child: CustomText(
                                  text:  DateFormat.yMMMd()
                              .format(controller.selectedDate.value),
                                  fontSize: 14.sp,
                                  color: blackcolor,
                                  fontWeight: FontWeight.w300)
                    
                      ),
                    )),
                const SizedBox(height: 20),
                CustomText(
                    text: 'Check in time',
                    fontSize: 14.sp,
                    color: blackcolor,
                    fontWeight: FontWeight.bold),
                10.heightBox,
                Obx(() => InkWell(
                      onTap: () async {
                        TimeOfDay? pickedTime = await showTimePicker(
                          context: context,
                          initialTime: controller.selectedTime.value,
                        );
                        if (pickedTime != null) {
                          controller.setSelectedTime(pickedTime);
                        }
                      },
                      child: InputDecorator(
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: greyColor)),
                          hintText: 'Select',
                          hintStyle: TextStyle(color: blackcolor),
                          suffixIcon: Icon(Icons.access_time),
                        ),
                        child:CustomText(
                                  text: controller.selectedTime.value.format(context),
                                  fontSize: 14.sp,
                                  color: blackcolor,
                                  fontWeight: FontWeight.w300)
                       
                      ),
                    )),
                const SizedBox(height: 30),
                const Text('Note',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: blackcolor)),
                Obx(() => TextField(
                     
                      controller: controller.notecontroller.value,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: greyColor)),
                        hintText: 'Add a note',

                      ),
                    )),
                const SizedBox(height: 32),
                const Center(
                    child: Text('or', style: TextStyle(color: Colors.red))),
                const SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {
                      // Implement QR code scanning functionality here
                    },
                    child: const Text(
                      'Scan Qr',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
