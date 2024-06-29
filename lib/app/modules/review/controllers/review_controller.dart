import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReviewController extends GetxController {
  var rating = 0.0.obs;
  TextEditingController reviewController = TextEditingController();

  void updateRating(double newRating) {
    rating.value = newRating;
  }

  @override
  void onClose() {
    reviewController.dispose();
    super.onClose();
  }
}
