import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidslearning/app/data/postmodels/signInModel.dart';
import 'package:kidslearning/app/repositories/authRepostiory.dart';

class SigninController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final formKey = GlobalKey<FormState>();
  var selectedValue = 'Admin, Parent, Nanny'.obs;

  AuthRepository authRepository = AuthRepository();

  Future signInUser() async {
    await authRepository.signInUser(SignInPostModel(
        email: emailController.value.text.toString().trim(),
        password: passwordController.value.text.toString().trim()));
  }
}
