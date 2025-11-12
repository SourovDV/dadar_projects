import 'package:dadar_projects/common/utils/Image_path/image_path.dart';
import 'package:dadar_projects/common/utils/app_color/app_color.dart';
import 'package:dadar_projects/features/onboading/controller/onboading_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboadingThreeScreen extends GetView<OnBoadingOneController> {
  const OnboadingThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColor.surfacePrimary,
      appBar: AppBar(
        backgroundColor: AppColor.surfacePrimary,
        iconTheme: IconThemeData(color: Colors.grey),
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
            SizedBox(height: 76.h),
            Image.asset(ImagePath.onboadingThreeImage),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text("Real-Time Parking Updates", style: theme.labelLarge),
            ),
            Text(
              "With VIP ME, you can view live parking availability in your area. Get real-time updates on available spots, ensuring you always find a safe and convenient place to park—no more wasted time searching!",
              style: theme.labelMedium,
            ),
            SizedBox(height: 180.h),
            Row(
              children: [
                Image.asset(ImagePath.toggolThree),
                SizedBox(width: 70.h),
                Expanded(
                  child: InkWell(
                    onTap: controller.onboadingToSignInScreen,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      height: 44.h,
                      child: Center(
                        child: Text("Get Started", style: theme.labelMedium),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
