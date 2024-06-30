import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/customtext.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/images.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/fee_details_controller.dart';

class FeeDetailsView extends GetView<FeeDetailsController> {
  const FeeDetailsView({super.key});
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
                      text: "Fee Details",
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
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const PaymentInfoCard();
                }),
          )
        ],
      ),
    ));
  }
}

class PaymentInfoCard extends StatelessWidget {
  const PaymentInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: const Color(0xFFE9EBEE),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildInfoRow("Receipt No.", "#98761"),
                  const SizedBox(height: 8),
                  const Divider(height: 1, color: Colors.grey),
                  const SizedBox(height: 8),
                  buildInfoRow("Month", "October"),
                  const SizedBox(height: 8),
                  const Divider(height: 1, color: Colors.grey),
                  const SizedBox(height: 8),
                  buildInfoRow("Payment Date", "10 Oct 20"),
                  const SizedBox(height: 8),
                  const Divider(height: 1, color: Colors.grey),
                  const SizedBox(height: 8),
                  buildInfoRow("Total Pending Amount", "₹999"),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const BoxDecoration(
                color: Color(0xFF7B1FA2),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(10),
                ),
              ),
              child: const Center(
                child: Text(
                  "Pending",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black54,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            color: Color(0xFF7B1FA2),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
