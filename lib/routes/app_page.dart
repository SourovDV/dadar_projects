import 'package:dadar_projects/features/authentication/sign_in/bindings/authentication_bindings.dart';
import 'package:dadar_projects/features/authentication/sign_in/view/forgot_password.dart';
import 'package:dadar_projects/features/authentication/sign_in/view/otp_screen.dart';
import 'package:dadar_projects/features/authentication/sign_in/view/reset_password.dart';
import 'package:dadar_projects/features/authentication/sign_in/view/sign_in_view.dart';
import 'package:dadar_projects/features/onboading/binding/onboading_bindings.dart';
import 'package:dadar_projects/features/onboading/view/onboading_one_screen.dart';
import 'package:dadar_projects/features/onboading/view/onboading_three_screen.dart';
import 'package:dadar_projects/features/onboading/view/onboading_two_screen.dart';
import 'package:dadar_projects/features/splash/binding/splash_bindings.dart';
import 'package:dadar_projects/features/splash/view/splash_view.dart';
import 'package:dadar_projects/routes/app_routes.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final initialPage = AppPages.home;

  static final routes = [
    GetPage(name: AppPages.home, page: ()=>SplashView(),binding: SplashBindings()),
    GetPage(name: AppPages.onBoadingOnePage, page: ()=>OnboadingOneScreen(),binding: OnBoadingBinding()),
    GetPage(name: AppPages.onBoadingTwoPage, page: ()=>OnboadingTwoScreen(),binding: OnBoadingBinding()),
    GetPage(name: AppPages.onBoadingThreePage, page: ()=>OnboadingThreeScreen(),binding: OnBoadingBinding()),
    GetPage(name: AppPages.signInPage, page: ()=>SignInView(),binding: AuthenticationBindings()),
    GetPage(name: AppPages.forgotPassword, page: ()=>ForgotPassword(),binding: AuthenticationBindings()),
    GetPage(name: AppPages.optScreen, page: ()=>OtpScreen(),binding: AuthenticationBindings()),
    GetPage(name: AppPages.resetPassword, page: ()=>ResetPassword(),binding: AuthenticationBindings()),

  ];

}