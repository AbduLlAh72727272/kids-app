import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kidslearning/app/customeWidgets/customButton.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/icons.dart';
import 'package:kidslearning/app/resources/images.dart';
import 'package:kidslearning/app/routes/app_pages.dart';
import 'package:velocity_x/velocity_x.dart';
import '../controllers/admin_support_controller.dart';

class AdminSupportView extends GetView<AdminSupportController> {
  const AdminSupportView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          30.heightBox,
          Row(
            mainAxisAlignment: mainbetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {}, child: const Icon(Icons.arrow_back)),
                  10.widthBox,
                  CustomText(
                      text: "Admin Support",
                      fontSize: 22.sp,
                      color: primaycolor,
                      fontWeight: FontWeight.w600),
                ],
              ),
              const CircleAvatar(
                backgroundImage: AssetImage(introimg),
              ),
            ],
          ),
          100.heightBox,
          Image.asset(
            support,
            width: 150,
            height: 200,
          ),
          20.heightBox,
          CustomText(
              text: "Get Support",
              fontSize: 24.sp,
              color: primaycolor,
              fontWeight: FontWeight.normal),
          10.heightBox,
          SizedBox(
            width: 300,
            child: Text(
              "For any support request regards your orders or deliveries please feel free to speak with us at below.",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                  fontSize: 16.sp,
                  color: textfieldgrey,
                  fontWeight: FontWeight.w300),
            ),
          ),
          const Spacer(),
            CustomButton(
                  text: "Start Chat",
                  onPressed: () {
                    // if (controller.formKey.currentState!.validate()) {}
                    Get.toNamed(Routes.VERIFICATION_CODE);

                  }),
          100.heightBox,
        ],
      ),
    ));
  }
}
