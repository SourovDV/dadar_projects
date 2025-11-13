import 'package:dadar_projects/routes/app_routes.dart';
import 'package:get/get.dart';

class LocationController extends GetxController{
    void locationToSucessPage(){
      Get.toNamed(AppPages.sucessScreen);
    }
    void suceesToSignInPage(){
      Get.toNamed(AppPages.signInPage);
    }
}