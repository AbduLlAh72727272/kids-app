import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/images.dart';
import 'package:kidslearning/app/routes/app_pages.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: mainbetween,
            children: [
              Column(
                crossAxisAlignment: crosstart,
                children: [
                  CustomText(
                      text: "Home",
                      fontSize: 26.sp,
                      color: primaycolor,
                      fontWeight: FontWeight.w600),
                   CustomText(
                      text: "Monitor your kids activities easily",
                      fontSize: 14.sp,
                      color: primaycolor,
                      fontWeight: FontWeight.w400),
                ],
              ),
              const CircleAvatar(backgroundImage: AssetImage(introimg),),
            ],
          ),

          30.heightBox,
          GestureDetector(onTap: (){
            Get.toNamed(Routes.DAILY_REPORT);
          },child: Image.asset(img1)),
         
           GestureDetector(onTap: (){
            Get.toNamed(Routes.FEE_DETAILS);
          },child: Image.asset(img2)),
      
          GestureDetector(onTap: (){
            Get.toNamed(Routes.OTHERFILES);
          },child: Image.asset(img3)),
       
           GestureDetector(onTap: (){
            Get.toNamed(Routes.CHAT_SCREEN);
          },child: Image.asset(img4)),
         
          Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child:  GestureDetector(onTap: (){
            Get.toNamed(Routes.REVIEW);
          },child: Image.asset(img5)),
          ),
          

          
          
        ],
      ),
    ));
  }
}
