import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/images.dart';
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
          Image.asset(img1),
         
          Image.asset(img2),
      
          Image.asset(img3),
       
          Image.asset(img4),
         
          Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Image.asset(img5,),
          ),
          

          
          
        ],
      ),
    ));
  }
}
