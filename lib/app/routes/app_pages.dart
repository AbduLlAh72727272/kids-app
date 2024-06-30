import 'package:get/get.dart';

import '../modules/AuthenticationSuccess/bindings/authentication_success_binding.dart';
import '../modules/AuthenticationSuccess/views/authentication_success_view.dart';
import '../modules/adminSupport/bindings/admin_support_binding.dart';
import '../modules/adminSupport/views/admin_support_view.dart';
import '../modules/chatScreen/bindings/chat_screen_binding.dart';
import '../modules/chatScreen/views/chat_screen_view.dart';
import '../modules/createnewpassword/bindings/createnewpassword_binding.dart';
import '../modules/createnewpassword/views/createnewpassword_view.dart';
import '../modules/dailyReport/bindings/daily_report_binding.dart';
import '../modules/dailyReport/views/daily_report_view.dart';
import '../modules/feeDetails/bindings/fee_details_binding.dart';
import '../modules/feeDetails/views/fee_details_view.dart';
import '../modules/forgetPassword/bindings/forget_password_binding.dart';
import '../modules/forgetPassword/views/forget_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onBoarding/bindings/on_boarding_binding.dart';
import '../modules/onBoarding/views/on_boarding_view.dart';
import '../modules/otherfiles/bindings/otherfiles_binding.dart';
import '../modules/otherfiles/views/otherfiles_view.dart';
import '../modules/review/bindings/review_binding.dart';
import '../modules/review/views/review_view.dart';
import '../modules/signin/bindings/signin_binding.dart';
import '../modules/signin/views/signin_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splashScreen/bindings/splash_screen_binding.dart';
import '../modules/splashScreen/views/splash_screen_view.dart';
import '../modules/verificationCode/bindings/verification_code_binding.dart';
import '../modules/verificationCode/views/verification_code_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.FORGETPASSWORD,
      page: () => const ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.ON_BOARDING,
      page: () => const OnBoardingView(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION_CODE,
      page: () => VerificationCodeView(),
      binding: VerificationCodeBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION_SUCCESS,
      page: () => const AuthenticationSuccessView(),
      binding: AuthenticationSuccessBinding(),
    ),
    GetPage(
      name: _Paths.CREATENEWPASSWORD,
      page: () => const CreatenewpasswordView(),
      binding: CreatenewpasswordBinding(),
    ),
    GetPage(
      name: _Paths.FEE_DETAILS,
      page: () => const FeeDetailsView(),
      binding: FeeDetailsBinding(),
    ),
    GetPage(
      name: _Paths.OTHERFILES,
      page: () => const OtherfilesView(),
      binding: OtherfilesBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_SUPPORT,
      page: () => const AdminSupportView(),
      binding: AdminSupportBinding(),
    ),
    GetPage(
      name: _Paths.REVIEW,
      page: () => const ReviewView(),
      binding: ReviewBinding(),
    ),
    GetPage(
      name: _Paths.DAILY_REPORT,
      page: () => const DailyReportView(),
      binding: DailyReportBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_SCREEN,
      page: () => const ChatScreenView(),
      binding: ChatScreenBinding(),
    ),
  ];
}
