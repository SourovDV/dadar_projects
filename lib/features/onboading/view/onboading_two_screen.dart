import 'package:dadar_projects/common/utils/Image_path/image_path.dart';
import 'package:dadar_projects/common/utils/app_color/app_color.dart';
import 'package:dadar_projects/features/onboading/controller/onboading_one_controller.dart';
import 'package:dadar_projects/features/onboading/widgths/button_widgth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboadingTwoScreen extends GetView<OnBoadingOneController> {
  const OnboadingTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme =Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColor.surfacePrimary,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: AppColor.surfacePrimary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Text("Skip",style:theme.labelSmall,)
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 76.h,),
            Image.asset(ImagePath.onboadingTwoImage),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text("Find, Reserve, Park!",style: theme.labelLarge,),
            ),
            Text(
              "With VIP ME, parking has never been easier. Whether you're driving a car or a truck, quickly discover secure, available parking spots nearby, reserve them in real-time, and park with peace of mind. Save time, reduce stress, and never worry about finding parking again!",
              style: theme.labelMedium,
            ),
            SizedBox(height: 291.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(ImagePath.toggolTwo),
                CommonNextButton(ontap: (){
                  controller.secondOnboadingToNext();
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
