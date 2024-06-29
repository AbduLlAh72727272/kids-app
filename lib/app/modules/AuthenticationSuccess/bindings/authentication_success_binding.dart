import 'package:get/get.dart';

import '../controllers/authentication_success_controller.dart';

class AuthenticationSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthenticationSuccessController>(
      () => AuthenticationSuccessController(),
    );
  }
}
