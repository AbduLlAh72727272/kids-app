import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
final emailController=TextEditingController().obs;
final passwordController=TextEditingController().obs;
  final formKey = GlobalKey<FormState>();
    var selectedValue = 'Admin, Parent, Nanny'.obs;
}
