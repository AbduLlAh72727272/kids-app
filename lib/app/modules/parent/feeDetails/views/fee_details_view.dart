import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/appBar.dart';
import 'package:kidslearning/app/data/getmodels/getFeeModel.dart';
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
          appBar("Fee Details"),
          Obx(
            () => controller.isLoading.value != true
                ? Expanded(
                    child: ListView.builder(
                        itemCount: controller.getfeeSlips.length,
                        itemBuilder: (context, index) {
                          return PaymentInfoCard(
                              getFeeModel: controller.getfeeSlips[index]);
                        }))
                : const CircularProgressIndicator(),
          )
        ],
      ),
    ));
  }
}

// ignore: must_be_immutable
class PaymentInfoCard extends StatelessWidget {
  PaymentInfoCard({super.key, required this.getFeeModel});
  GetFeeModel getFeeModel;
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
                  buildInfoRow("Receipt No.", getFeeModel.id.toString()),
                  const SizedBox(height: 8),
                  const Divider(height: 1, color: Colors.grey),
                  const SizedBox(height: 8),
                  buildInfoRow("Month", getFeeModel.month!),
                  const SizedBox(height: 8),
                  const Divider(height: 1, color: Colors.grey),
                  const SizedBox(height: 8),
                  buildInfoRow("Payment Date",
                      getFeeModel.paymentDate.toString().split(' ')[0]),
                  const SizedBox(height: 8),
                  const Divider(height: 1, color: Colors.grey),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Total Pending Amount",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "\$${getFeeModel.totalPending}",
                        style: const TextStyle(
                          color: Color(0xFF7B1FA2),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
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
              child: Center(
                child: Text(
                  getFeeModel.status.toString(),
                  style: const TextStyle(
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
