import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kidslearning/app/data/postmodels/createNewPassword.dart';
import 'package:kidslearning/app/repositories/authRepostiory.dart';
import 'package:kidslearning/app/resources/localStorage.dart';

class CreatenewpasswordController extends GetxController {
  final confirmController = TextEditingController().obs;
  final newpasswordController = TextEditingController().obs;
  final formKey = GlobalKey<FormState>();
  AuthRepository authRepository = AuthRepository();

  //create new password
  Future createNewPassword() async {
    authRepository.createNewPassword(CreateNewPasswordModel(
      email: box.read(email),
      password: newpasswordController.value.text.toString().trim(),
      cPassword: confirmController.value.text.toString().trim()
    ));
  }
}
