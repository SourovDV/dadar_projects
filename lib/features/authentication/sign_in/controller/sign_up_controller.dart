import 'package:dadar_projects/routes/app_routes.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
  void signUptoLocationScreen(){
    Get.toNamed(AppPages.locationScreen);
  }
}