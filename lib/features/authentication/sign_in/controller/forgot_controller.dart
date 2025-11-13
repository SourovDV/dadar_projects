import 'package:dadar_projects/routes/app_routes.dart';
import 'package:get/get.dart';

class ForgotController extends GetxController{
  void forgotToOptScreen(){
    Get.toNamed(AppPages.optScreen);
  }
  void otpToResetPassword(){
    Get.toNamed(AppPages.resetPassword);
  }
  void resetToSignUpPage(){
    Get.toNamed(AppPages.signUp);
  }

}