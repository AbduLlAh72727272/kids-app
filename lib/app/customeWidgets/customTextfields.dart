import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/resources/colors.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const CustomTextField({super.key, 
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Color(0xff1F1E31), // Adjust color as needed
          ),
        ),
        const SizedBox(height: 12.0), // Space between label and text field
        TextFormField(
          style: const TextStyle(color: blackcolor),
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
            fillColor: whitecolor,
            filled: true,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
            contentPadding:
                const EdgeInsets.only(top: 0, bottom: 0, left: 10.0),
            border: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(8.0), // Adjust the radius as needed
              borderSide: const BorderSide(
                  color: greyColor), // Adjust border color as needed
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(8.0), // Adjust the radius as needed
              borderSide: const BorderSide(
                  color: greyColor), // Adjust border color as needed
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(8.0), // Adjust the radius as needed
              borderSide: const BorderSide(
                  color: textfieldgrey), // Adjust border color as needed
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class CustomTextFieldForPassword extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  CustomTextFieldForPassword({super.key, 
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.validator,
  });
  var isObsecure = true.obs;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            fontSize: 16.0.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xff1F1E31), text: labelText,),
        const SizedBox(height: 12.0), // Space between label and text field
        Obx(
          () => TextFormField(
            obscureText: isObsecure.value,
            style: const TextStyle(color: blackcolor),
            controller: controller,
            validator: validator,
            decoration: InputDecoration(
              hintText: hintText,
              fillColor: whitecolor,
              filled: true,
              suffixIcon: GestureDetector(
                  onTap: () {
                    isObsecure.value = !isObsecure.value;
                  },
                  child: Icon(
                    isObsecure.value ? Icons.visibility : Icons.visibility_off,
                    color: textfieldgrey,
                  )),
              hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
              contentPadding:
                  const EdgeInsets.only(top: 0, bottom: 0, left: 10.0),
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(8.0), // Adjust the radius as needed
                borderSide: const BorderSide(
                    color: greyColor), // Adjust border color as needed
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(8.0), // Adjust the radius as needed
                borderSide: const BorderSide(
                    color: greyColor), // Adjust border color as needed
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(8.0), // Adjust the radius as needed
                borderSide: const BorderSide(
                    color: textfieldgrey), // Adjust border color as needed
              ),
            ),
          ),
        ),
      ],
    );
  }
}
