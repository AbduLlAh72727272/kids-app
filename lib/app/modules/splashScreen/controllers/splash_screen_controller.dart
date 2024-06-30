import 'package:get/get.dart';
import 'package:kidslearning/app/resources/localStorage.dart';
import 'package:kidslearning/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () {
      if (box.read(userToken) != null) {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.toNamed(Routes.SIGNIN);
      }
    });
  }
}
