import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/appBar.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/icons.dart';
import 'package:kidslearning/app/resources/paddings.dart';
import 'package:velocity_x/velocity_x.dart';
import '../controllers/daily_report_controller.dart';

class DailyReportView extends GetView<DailyReportController> {
  const DailyReportView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whitecolor,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
             appBar("Daily Report"),
              20.heightBox,
              SizedBox(
                width: 100.w,
                child: Image.asset(
                  showerduck,
                )
                    .box
                    .height(70)
                    .width(70)
                    .roundedSM
                    .clip(Clip.antiAlias)
                    .make(),
              ),
              10.heightBox,
              Center(
                  child: CustomText(
                      text: "Aliena",
                      fontSize: 18.sp,
                      color: blackcolor,
                      fontWeight: FontWeight.w300)),
              30.heightBox,
              Column(
                children: [
                  Center(
                    child: Column(
                      crossAxisAlignment: crosstart,
                      children: [
                        10.heightBox,
                        CustomText(
                            text: "Date",
                            fontSize: 14.sp,
                            color: primaycolor,
                            fontWeight: FontWeight.w500),
                        2.heightBox,
                        SizedBox(
                          width: 180.w,
                          child: Row(
                            // mainAxisAlignment: maincenter,
                            children: [
                              CustomText(
                                  text: "19-6-2024",
                                  fontSize: 12.sp,
                                  color: blackcolor,
                                  fontWeight: FontWeight.w300),
                              100.widthBox,
                              Image.asset(
                                calender,
                                width: 20,
                                height: 20,
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 180.w, child: const Divider()),
                      ],
                    ),
                  ),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: mainbetween,
                    children: [
                      SizedBox(
                        width: 140.w,
                        child: Column(
                          crossAxisAlignment: crosstart,
                          children: [
                            CustomText(
                                text: "Check in time",
                                fontSize: 14.sp,
                                color: primaycolor,
                                fontWeight: FontWeight.w500),
                            3.heightBox,
                            CustomText(
                                text: "8:00 am",
                                fontSize: 12.sp,
                                color: blackcolor,
                                fontWeight: FontWeight.w300),
                            const Divider(),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 140.w,
                        child: Column(
                          crossAxisAlignment: crosstart,
                          children: [
                            CustomText(
                                text: "Check out Time",
                                fontSize: 14.sp,
                                color: primaycolor,
                                fontWeight: FontWeight.w500),
                            3.heightBox,
                            CustomText(
                                text: "4:00 pm",
                                fontSize: 12.sp,
                                color: blackcolor,
                                fontWeight: FontWeight.w300),
                            const Divider(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: mainend,
                    children: [
                      Image.asset(
                        chat,
                        width: 20,
                        height: 20,
                      ),
                      20.widthBox,
                      Image.asset(
                        tick,
                        width: 20,
                        height: 20,
                      ),
                      20.widthBox,
                    ],
                  ),
                  RowData(
                    headerImage: dance,
                    headerText: "Dance Class",
                    bottomimg: rockandroll,
                    activityName: "Attend Class",
                    classtime: "9:00 am",
                  ),
                  RowData(
                    headerImage: meal,
                    headerText: "Meal",
                    bottomimg: cup,
                    activityName: "Milk Bottle",
                    classtime: "9:00 am",
                  ),
                  RowData(
                    headerImage: cloths,
                    headerText: "Cloths",
                    bottomimg: diaper,
                    activityName: "Change Diaper",
                    classtime: "9:00 am",
                  ),
                  RowData(
                    headerImage: showerduck,
                    headerText: "Shower",
                    bottomimg: bathtub,
                    activityName: "Take shower",
                    classtime: "9:00 am",
                  ),
                ],
              )
                  .box
                  .white
                  .outerShadow
                  .padding(pad12)
                  .margin(const EdgeInsets.all(5))
                  .make()
            ],
          ),
        ));
  }
}

// ignore: must_be_immutable
class RowData extends StatelessWidget {
  RowData({
    super.key,
    required this.activityName,
    required this.bottomimg,
    required this.classtime,
    required this.headerImage,
    required this.headerText,
  });
  String? headerImage;
  String? headerText;
  String? bottomimg;
  String? activityName;
  String? classtime;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        10.heightBox,
        Row(
          mainAxisAlignment: mainstart,
          children: [
            Image.asset(
              headerImage!,
              width: 30,
              height: 30,
            ),
            10.widthBox,
            CustomText(
                text: headerText!,
                fontSize: 14.sp,
                color: primaycolor,
                fontWeight: FontWeight.w500),
          ],
        ),
        10.heightBox,
        Row(
          mainAxisAlignment: mainbetween,
          children: [
            Row(
              children: [
                Image.asset(
                  bottomimg!,
                  width: 20,
                  height: 20,
                ),
                10.widthBox,
                CustomText(
                    text: activityName!,
                    fontSize: 12.sp,
                    color: textfieldgrey,
                    fontWeight: FontWeight.w300),
              ],
            ),
            CustomText(
                text: classtime!,
                fontSize: 12.sp,
                color: primaycolor,
                fontWeight: FontWeight.w300),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
