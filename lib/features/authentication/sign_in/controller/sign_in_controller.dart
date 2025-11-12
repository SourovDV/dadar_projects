import 'package:dadar_projects/routes/app_routes.dart';
import 'package:get/get.dart';

class SignInController extends GetxController{
  void goToForgotPage(){
    Get.toNamed(AppPages.forgotPassword);
  }
}