import 'package:get/get.dart';
import 'package:kidslearning/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(Routes.HOME);
    });
  }
}
