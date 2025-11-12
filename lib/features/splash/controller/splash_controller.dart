import 'package:dadar_projects/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{

  Future<void> splashToOnboadingScreen()async{
    await Future.delayed(Duration(seconds: 2));
    Get.offNamed(AppPages.onBoadingOnePage);
    print("hellow");
  }

  @override
  void onReady() {
    super.onReady();
    splashToOnboadingScreen();
  }
}