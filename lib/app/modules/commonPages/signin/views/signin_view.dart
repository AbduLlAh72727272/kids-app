import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/backButton.dart';
import 'package:kidslearning/app/customeWidgets/customButton.dart';
import 'package:kidslearning/app/customeWidgets/customTextfields.dart';
import 'package:kidslearning/app/customeWidgets/customtextButton.dart';
import 'package:kidslearning/app/customeWidgets/validators.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/icons.dart';
import 'package:kidslearning/app/routes/app_pages.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            30.heightBox,
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: crosstart,
                children: [
                  backButton("Sign In"),
                  30.heightBox,
                  Form(
                    key: controller.formKey,
                    child: Column(
                      crossAxisAlignment: crosstart,
                      children: [
                        CustomTextField(
                          labelText: "Email",
                          hintText: "Enter Email",
                          validator: Validators.emailValidator,
                          controller: controller.emailController.value,
                        ),
                        20.heightBox,
                        CustomTextFieldForPassword(
                          labelText: "Password",
                          hintText: "Enter Password",
                          validator: Validators.validatePassword,
                          controller: controller.passwordController.value,
                        ),
                        // 20.heightBox,
                        // CustomText(
                        //   text: 'Sign in as',
                        //   fontSize: 16.sp,
                        //   fontWeight: FontWeight.bold,
                        //   color: const Color(0xff1F1E31),
                        // ),
                        // 10.heightBox,
                        // Obx(() {
                        //   return Stack(
                        //     children: [
                        //       TextFormField(
                        //         readOnly: true,
                        //         decoration: InputDecoration(
                        //           hintText: controller.selectedValue.value,
                        //           hintStyle: const TextStyle(
                        //             color: Colors.grey,
                        //             fontSize: 14,
                        //             fontWeight: FontWeight.w400,
                        //           ),
                        //           focusedBorder: const OutlineInputBorder(
                        //             borderSide: BorderSide(
                        //               color: textfieldgrey,
                        //               width: 2,
                        //             ),
                        //             borderRadius:
                        //                 BorderRadius.all(Radius.circular(10)),
                        //           ),
                        //           enabledBorder: const OutlineInputBorder(
                        //             borderSide: BorderSide(
                        //               color: greyColor,
                        //             ),
                        //             borderRadius:
                        //                 BorderRadius.all(Radius.circular(10)),
                        //           ),
                        //           border: const OutlineInputBorder(
                        //             borderSide: BorderSide(color: greyColor),
                        //             borderRadius:
                        //                 BorderRadius.all(Radius.circular(10)),
                        //           ),
                        //           contentPadding:
                        //               const EdgeInsets.only(left: 10, top: 0),
                        //         ),
                        //       ),
                        //       Positioned(
                        //         right: 20,
                        //         top: 0,
                        //         bottom: 0,
                        //         child: DropdownButtonHideUnderline(
                        //           child: DropdownButton<String>(
                        //             borderRadius: BorderRadius.circular(20),
                        //             dropdownColor: whitecolor,
                        //             icon: Padding(
                        //                 padding:
                        //                     const EdgeInsets.only(right: 8.0),
                        //                 child: Image.asset(
                        //                   arrowdown,
                        //                   height: 15,
                        //                   width: 15,
                        //                   color: textfieldgrey,
                        //                 )),
                        //             items: <String>['Parent', 'Admin', 'Nanny']
                        //                 .map((String value) {
                        //               return DropdownMenuItem<String>(
                        //                 value: value,
                        //                 child: CustomText(
                        //                   color: textfieldgrey,
                        //                   fontWeight: FontWeight.normal,
                        //                   fontSize: 14.sp,
                        //                   text: value,
                        //                 ),
                        //               );
                        //             }).toList(),
                        //             onChanged: (newValue) {
                        //               if (newValue != null) {
                        //                 controller.selectedValue.value =
                        //                     newValue;
                        //               }
                        //             },
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   );
                        // }),
                        20.heightBox,
                        Image.asset(signintext),
                      ],
                    ),
                  ),
                  100.heightBox,
                  CustomButton(
                      text: "Sign In",
                      onPressed: () {
                        if (controller.formKey.currentState!.validate()) {
                          controller.signInUser();
                        }
                      }),
                  10.heightBox,
                  Center(
                      child: CustomTextButton(
                    text: "Forget Password",
                    onPressed: () {
                      Get.toNamed(Routes.FORGETPASSWORD);
                    },
                    textColor: redColor,
                    textSize: 15.sp,
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
