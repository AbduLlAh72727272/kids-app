import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidslearning/app/repositories/authRepostiory.dart';

class ForgetPasswordController extends GetxController {
  final emailController = TextEditingController().obs;
  final formKey = GlobalKey<FormState>();
  AuthRepository authRepository = AuthRepository();
  Future sentOtp() async {
    await authRepository.sendOtp(emailController.value.text.toString());
  }
}
