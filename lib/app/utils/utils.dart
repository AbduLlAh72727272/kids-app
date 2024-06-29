import 'package:get/get.dart';

import '../resources/colors.dart';

class Utils {
  static snakbar({required String title, required String body}) {
    return Get.snackbar(
      title,
      body,
      backgroundColor: halfwhitecolor,
      overlayBlur: 0.8,
      snackPosition: SnackPosition.TOP,
    );
  }
}
