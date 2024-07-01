import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/appBar.dart';
import 'package:kidslearning/app/resources/paddings.dart';
import 'package:kidslearning/app/routes/app_pages.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/nanny_home_page_controller.dart';

class NannyHomePageView extends GetView<NannyHomePageController> {
  const NannyHomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Padding(
        padding:pad16,
        child: ListView(children: [
          appBar("Home"),
          40.heightBox,
          GestureDetector(onTap: (){
            Get.toNamed(Routes.ATTENDANCE);
          },child: Image.asset("assets/images/location.png")),
          10.heightBox,
          GestureDetector(onTap: (){
             Get.toNamed(Routes.ATTENDANCE);
          },child: Image.asset("assets/images/education.png")),
            10.heightBox,
          Image.asset("assets/images/5.png"),


        ],),
      )
    );
  }
}
