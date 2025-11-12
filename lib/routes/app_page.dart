import 'package:dadar_projects/features/onboading/binding/onboading_bindings.dart';
import 'package:dadar_projects/features/onboading/view/onboading_one_screen.dart';
import 'package:dadar_projects/features/splash/binding/splash_bindings.dart';
import 'package:dadar_projects/features/splash/view/splash_view.dart';
import 'package:dadar_projects/routes/app_routes.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final initialPage = AppPages.home;

  static final routes = [
    GetPage(name: AppPages.home, page: ()=>SplashView(),binding: SplashBindings()),
    GetPage(name: AppPages.onBoadingOnePage, page: ()=>OnboadingOneScreen(),binding: OnBoadingBinding()),
  ];

}