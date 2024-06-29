import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kidslearning/app/customeWidgets/customButton.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/routes/app_pages.dart';
import 'package:pinput/pinput.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:otp_timer_button/otp_timer_button.dart';
import '../../../customeWidgets/customtext.dart';
import '../controllers/verification_code_controller.dart';

class VerificationCodeView extends GetView<VerificationCodeController> {
  VerificationCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: crosstart,
          children: [
            40.heightBox,
            GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(Icons.arrow_back)),
            20.heightBox,
            CustomText(
                text: "Verification Code",
                fontSize: 26.sp,
                color: primaycolor,
                fontWeight: FontWeight.bold),
            30.heightBox,
            50.heightBox,
            Center(
              child: Pinput(
                  defaultPinTheme: defaultPinTheme,
                  controller: controller.pinputController.value,
                  length: 6,
                  separatorBuilder: (index) => const SizedBox(width: 8),
                  validator: (value) {
                    return value == '222222' ? null : 'Pin is incorrect';
                  },
                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                  onCompleted: (pin) {
                    debugPrint('onCompleted: $pin');
                  },
                  cursor: Column(
                    mainAxisAlignment: mainend,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 9),
                        width: 22,
                        height: 1,
                      ),
                    ],
                  )),
            ),
            20.heightBox,
            Center(
              child: OtpTimerButton(
                buttonType: ButtonType.text_button,
                controller: controller.controller,
                onPressed: () {

                },
                text: const Text('Resend OTP'),
                duration: 60,
              ),
            ),
           const Spacer(),
             CustomButton(
                  text: "Next",
                  onPressed: () {
                    // if (controller.formKey.currentState!.validate()) {}
                    Get.toNamed(Routes.AUTHENTICATION_SUCCESS);

                  }),
          100.heightBox,
          ],
        ),
      ),
    );
  }

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Color.fromRGBO(30, 60, 87, 1),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: textfieldgrey),
    ),
  );
}
