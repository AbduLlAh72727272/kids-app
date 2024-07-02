import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/appBar.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/otherfiles_controller.dart';

class OtherfilesView extends GetView<OtherfilesController> {
  const OtherfilesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whitecolor,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              30.heightBox,
              appBar("Other Files"),
              Obx(
                () => controller.isLoading.value != true
                    ? Expanded(
                        child: ListView.builder(
                          itemCount: controller.getfiles.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: GestureDetector(
                                      onTap: () {
                                        controller.downloadFile(
                                            controller
                                                .getfiles[index].fileLink!,
                                            controller.getfiles[index].name);
                                      },
                                      child: SizedBox(
                                        height: 60,
                                        child: Center(
                                          child: Text(
                                            controller.getfiles[index].name
                                                .toString(),
                                            style: TextStyle(
                                                color: blackcolor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.sp),
                                          ),
                                        ),
                                      ))
                                  .box
                                  .white
                                  .outerShadow
                                  .roundedSM
                                  .makeCentered(),
                            );
                          },
                        ),
                      )
                    : const SizedBox.shrink(),
              )
            ],
          ),
        ));
  }
}

class CourseTile extends StatelessWidget {
  final String title;

  const CourseTile({super.key, required this.title});

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
      child: GestureDetector(
        onTap: () {},
        child: ExpansionTile(
          title: Row(
            children: [
              const Icon(Icons.school, color: Colors.deepPurple),
              const SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(color: Colors.black87, fontSize: 14.sp),
              ),
            ],
          ),
          trailing:
              const Icon(Icons.keyboard_arrow_down, color: Colors.black54),
          children: [
            // Add additional details or actions for each course here
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Details about $title"),
            ),
          ],
        ),
      ),
    );
  }
}
