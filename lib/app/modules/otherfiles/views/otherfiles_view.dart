import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/images.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/otherfiles_controller.dart';

class OtherfilesView extends GetView<OtherfilesController> {
  const OtherfilesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
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
                      text: "Other Files",
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
          Expanded(
            child: ListView.builder(
             
              itemCount: controller.courses.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: CourseTile(title: controller.courses[index]),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}

class CourseTile extends StatelessWidget {
  final String title;

  CourseTile({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF6F7F9),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ExpansionTile(
        title: Row(
          children: [
            const Icon(Icons.school, color: Colors.deepPurple),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(color: Colors.black87,fontSize: 14.sp),
            ),
          ],
        ),
        trailing: const Icon(Icons.keyboard_arrow_down, color: Colors.black54),
        children: [
          // Add additional details or actions for each course here
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Details about $title"),
          ),
        ],
      ),
    );
  }
}
