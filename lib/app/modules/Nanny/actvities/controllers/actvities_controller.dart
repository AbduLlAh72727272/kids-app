import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActvitiesController extends GetxController {
  Rx<DateTime> selectedDate = Rx<DateTime>(DateTime.now());

  final dateController = TextEditingController().obs;
  void selectDate(DateTime date) {
    dateController.value.text = date.toString().split(' ')[0];
  }

  final checkinController=TextEditingController().obs;
  final checkoutController=TextEditingController().obs;

  void setCheckinTime(TimeOfDay time) {
    checkinController.value.text = "${time.hour.toString()}:""${time.minute.toString()} ${time.period.name}";
  }
  void setCheckoutTime(TimeOfDay time) {
    checkoutController.value.text = "${time.hour.toString()}:""${time.minute.toString()} ${time.period.name}";
  }

  var selectedTime = TimeOfDay.now().obs;
}
