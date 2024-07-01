import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidslearning/app/repositories/authRepostiory.dart';
import 'package:kidslearning/app/resources/localStorage.dart';
import 'package:otp_timer_button/otp_timer_button.dart';

class VerificationCodeController extends GetxController {
  final pinputController = TextEditingController().obs;
  OtpTimerButtonController controller = OtpTimerButtonController();
  final formKey = GlobalKey<FormState>();
  AuthRepository authRepository = AuthRepository();
  Future verifyOtp() async {
    await authRepository.verifyOtp(pinputController.value.text);
  }

   Future sentOtp() async {
    await authRepository.sendOtp(box.read(email));
  }
}
