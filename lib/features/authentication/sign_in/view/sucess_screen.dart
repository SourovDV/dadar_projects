import 'package:dadar_projects/common/utils/Image_path/image_path.dart';
import 'package:dadar_projects/common/utils/app_color/app_color.dart';
import 'package:dadar_projects/features/authentication/sign_in/controller/location_controller.dart';
import 'package:dadar_projects/features/authentication/widgth/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SucessScreen extends GetView<LocationController> {
  const SucessScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColor.surfacePrimary,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: AppColor.surfacePrimary,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 290,),
            Image.asset(ImagePath.sucessImage),
            SizedBox(height: 30,),
            Text("Thank You for Signing Up !",style:theme.labelMedium,),
            Text(" Welcome to our VIP ME application. Get ready for exclusive access to hassle-free car and truck parking!",style: theme.labelMedium,),
            SizedBox(height:246 ,),
            PrimaryButton(theme: theme, title: "Continoue", ontap: (){
              controller.suceesToSignInPage();
            })
          ],
        ),
      ),
    );
  }
}
