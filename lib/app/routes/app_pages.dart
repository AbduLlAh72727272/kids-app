import 'package:get/get.dart';

import '../modules/Nanny/NannyDetails/bindings/nanny_details_binding.dart';
import '../modules/Nanny/NannyDetails/views/nanny_details_view.dart';
import '../modules/Nanny/attendance/bindings/attendance_binding.dart';
import '../modules/Nanny/attendance/views/attendance_view.dart';
import '../modules/Nanny/feedback/bindings/feedback_binding.dart';
import '../modules/Nanny/feedback/views/feedback_view.dart';
import '../modules/Nanny/nannyHomePage/bindings/nanny_home_page_binding.dart';
import '../modules/Nanny/nannyHomePage/views/nanny_home_page_view.dart';
import '../modules/Nanny/scannedScreen/bindings/scanned_screen_binding.dart';
import '../modules/Nanny/scannedScreen/views/scanned_screen_view.dart';
import '../modules/Nanny/actvities/bindings/actvities_binding.dart';
import '../modules/Nanny/actvities/views/actvities_view.dart';
import '../modules/commonPages/AuthenticationSuccess/bindings/authentication_success_binding.dart';
import '../modules/commonPages/AuthenticationSuccess/views/authentication_success_view.dart';
import '../modules/commonPages/createnewpassword/bindings/createnewpassword_binding.dart';
import '../modules/commonPages/createnewpassword/views/createnewpassword_view.dart';
import '../modules/commonPages/forgetPassword/bindings/forget_password_binding.dart';
import '../modules/commonPages/forgetPassword/views/forget_password_view.dart';
import '../modules/commonPages/onBoarding/bindings/on_boarding_binding.dart';
import '../modules/commonPages/onBoarding/views/on_boarding_view.dart';
import '../modules/commonPages/signin/bindings/signin_binding.dart';
import '../modules/commonPages/signin/views/signin_view.dart';
import '../modules/commonPages/signup/bindings/signup_binding.dart';
import '../modules/commonPages/signup/views/signup_view.dart';
import '../modules/commonPages/splashScreen/bindings/splash_screen_binding.dart';
import '../modules/commonPages/splashScreen/views/splash_screen_view.dart';
import '../modules/commonPages/verificationCode/bindings/verification_code_binding.dart';
import '../modules/commonPages/verificationCode/views/verification_code_view.dart';
import '../modules/parent/adminSupport/bindings/admin_support_binding.dart';
import '../modules/parent/adminSupport/views/admin_support_view.dart';
import '../modules/parent/chatScreen/bindings/chat_screen_binding.dart';
import '../modules/parent/chatScreen/views/chat_screen_view.dart';
import '../modules/parent/dailyReport/bindings/daily_report_binding.dart';
import '../modules/parent/dailyReport/views/daily_report_view.dart';
import '../modules/parent/feeDetails/bindings/fee_details_binding.dart';
import '../modules/parent/feeDetails/views/fee_details_view.dart';
import '../modules/parent/home/bindings/home_binding.dart';
import '../modules/parent/home/views/home_view.dart';
import '../modules/parent/otherfiles/bindings/otherfiles_binding.dart';
import '../modules/parent/otherfiles/views/otherfiles_view.dart';
import '../modules/parent/review/bindings/review_binding.dart';
import '../modules/parent/review/views/review_view.dart';

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
    GetPage(
      name: _Paths.NANNY_HOME_PAGE,
      page: () => const NannyHomePageView(),
      binding: NannyHomePageBinding(),
    ),
    GetPage(
      name: _Paths.ATTENDANCE,
      page: () => const AttendanceView(),
      binding: AttendanceBinding(),
    ),
    GetPage(
      name: _Paths.SCANNED_SCREEN,
      page: () => const ScannedScreenView(),
      binding: ScannedScreenBinding(),
    ),
    GetPage(
      name: _Paths.FEEDBACK,
      page: () => const FeedbackView(),
      binding: FeedbackBinding(),
    ),
    GetPage(
      name: _Paths.NANNY_DETAILS,
      page: () => const NannyDetailsView(),
      binding: NannyDetailsBinding(),
    ),
    GetPage(
      name: _Paths.ACTVITIES,
      page: () => const ActvitiesView(),
      binding: ActvitiesBinding(),
    ),
  ];
}
