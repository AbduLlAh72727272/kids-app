import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AttendanceController extends GetxController {
  var selectedStudent = ''.obs;
  var selectedDate = DateTime.now().obs;
  var selectedTime = TimeOfDay.now().obs;
  var note = ''.obs;

  void setSelectedStudent(String value) {
    selectedStudent.value = value;
  }

  void setSelectedDate(DateTime date) {
    selectedDate.value = date;
  }

  void setSelectedTime(TimeOfDay time) {
    selectedTime.value = time;
  }
  final notecontroller=TextEditingController().obs;
}
