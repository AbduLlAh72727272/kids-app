import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScannedScreenController extends GetxController {
  var selectedStudent = 'Ali'.obs;
  var selectedDate = DateTime(2024, 6, 20).obs;
  var selectedTime = const TimeOfDay(hour: 9, minute: 30).obs;
  var note = ''.obs;
}
