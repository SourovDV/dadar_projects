import 'package:dadar_projects/common/utils/Image_path/image_path.dart';
import 'package:dadar_projects/common/utils/app_color/app_color.dart';
import 'package:dadar_projects/features/onboading/controller/onboading_one_controller.dart';
import 'package:dadar_projects/features/onboading/widgths/button_widgth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboadingOneScreen extends GetView<OnBoadingOneController> {
  const OnboadingOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.surfacePrimary,
        appBar: AppBar(
          backgroundColor: AppColor.surfacePrimary,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Text("Skip", style: theme.labelSmall),
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 76.h,),
              Center(child: Image.asset(ImagePath.manWorking)),
              Padding(padding: EdgeInsets.symmetric(vertical: 20),
              child: Text("Why Choose Us", style: theme.labelLarge),
              ),
              Text(
                "We make parking easy, secure, and stress-free. Whether you're driving a car or a truck, find and reserve reliable parking spots in real-time, wherever you are. With our simple booking and payment system, your parking experience is just a tap away!",
                style: theme.labelMedium,
              ),
              SizedBox(height: 67.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(ImagePath.toggolOne),
                  CommonNextButton(ontap: () {
                    controller.goToAnotherOnboadingScreen();
                  },)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

