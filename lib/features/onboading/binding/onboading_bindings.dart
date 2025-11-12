import 'package:dadar_projects/features/onboading/controller/onboading_one_controller.dart';
import 'package:get/get.dart';

class OnBoadingBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(OnBoadingOneController());
  }

}