import 'package:get/get.dart';
import 'package:kidslearning/app/data/getmodels/signInReponseModel.dart';
import 'package:kidslearning/app/resources/localStorage.dart';
import 'package:kidslearning/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () {
    
      if (sharedPrefbox.read(userToken) != null &&
          signInResponseModelFromJson(sharedPrefbox.read(userInformation)).user!.role ==
              "parent") {
                  
        Get.offAllNamed(Routes.HOME);
      }
      else if (sharedPrefbox.read(userToken) != null &&
          signInResponseModelFromJson(sharedPrefbox.read(userInformation)).user!.role ==
              "nany") {
        Get.offAllNamed(Routes.NANNY_HOME_PAGE);
      }  else {
        Get.toNamed(Routes.SIGNIN);
      }
    });
  }
}
