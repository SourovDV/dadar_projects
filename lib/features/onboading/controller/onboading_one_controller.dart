import 'package:dadar_projects/routes/app_routes.dart';
import 'package:get/get.dart';

class OnBoadingOneController extends GetxController{

  void goToAnotherOnboadingScreen(){
    Get.toNamed(AppPages.onBoadingTwoPage);
  }

  void secondOnboadingToNext(){
    Get.toNamed(AppPages.onBoadingThreePage);
  }

  void onboadingToSignInScreen(){
    Get.toNamed(AppPages.signInPage);
  }
}