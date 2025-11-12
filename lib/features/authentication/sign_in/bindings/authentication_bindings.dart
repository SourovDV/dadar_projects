import 'package:dadar_projects/features/authentication/sign_in/controller/forgot_controller.dart';
import 'package:dadar_projects/features/authentication/sign_in/controller/sign_in_controller.dart';
import 'package:get/get.dart';

class AuthenticationBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(SignInController());
    Get.put(ForgotController());
  }
}