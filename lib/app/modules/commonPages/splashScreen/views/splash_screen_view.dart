import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/images.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Image.asset(
          logo,
          width: 300.w,
        ),
      )),
    );
  }
}
