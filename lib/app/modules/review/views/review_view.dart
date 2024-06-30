import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/customButton.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/images.dart';
import 'package:kidslearning/app/resources/paddings.dart';
import 'package:kidslearning/app/routes/app_pages.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/review_controller.dart';

class ReviewView extends GetView<ReviewController> {
  const ReviewView({super.key});
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
                      text: "Add Review",
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                40.heightBox,
                Center(
                  child: Obx(
                    () => RatingBar.builder(
                      initialRating: controller.rating.value,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 25.sp,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        controller.updateRating(rating);
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Review',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: blackcolor,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: controller.reviewController,
                  maxLines: 10,
                  decoration: InputDecoration(
                    hintText: 'write your review',
                    border: InputBorder.none,
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(8),
                    //   borderSide: BorderSide(
                    //     color: Colors.grey.shade300,
                    //     width: 1,
                    //   ),
                    // ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.deepPurple,
                        width: 1,
                      ),
                    ),
                  ),
                )
                    .box
                    .white
                    .outerShadow
                    .clip(Clip.antiAlias)
                    .padding(defaultpad)
                    .roundedSM
                    .make(),
              ],
            ),
          ),
          const Spacer(),
            Padding(
              padding: const EdgeInsets.all(12),
              child: CustomButton(
                    text: "Submit Review",
                    onPressed: () {
                      // if (controller.formKey.currentState!.validate()) {}
                      Get.toNamed(Routes.VERIFICATION_CODE);
              
                    }),
            ),
          100.heightBox,
        ],
      ),
    ));
  }
}
