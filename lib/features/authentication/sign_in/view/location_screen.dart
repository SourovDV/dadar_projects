import 'package:dadar_projects/common/utils/Image_path/image_path.dart';
import 'package:dadar_projects/common/utils/app_color/app_color.dart';
import 'package:dadar_projects/features/authentication/sign_in/controller/location_controller.dart';
import 'package:dadar_projects/features/authentication/widgth/common_text_form_field.dart';
import 'package:dadar_projects/features/authentication/widgth/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LocationScreen extends GetView<LocationController> {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme =Theme.of(context).textTheme;
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
            SizedBox(height: 111.h,),
            Image.asset(ImagePath.locationImage),
            SizedBox(height: 30.h,),
            Text("Find Nearby Parking Spots",style:theme.labelMedium?.copyWith(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),),
            SizedBox(height: 20.h,),
            Text("Enter your location or allow access to find available parking spots near you. Get real-time updates on secure, nearby spaces to park your car or truck with ease.",style: theme.labelSmall?.copyWith(color: Colors.white),),
            SizedBox(height: 20.h,),
            CommonTextFormFiled(hintext: "Use Location", icon: Icon(Icons.location_on_outlined)),
            SizedBox(height: 20.h,),
            CommonTextFormFiled(hintext: "Enter a new address",prefiex: Icon(Icons.location_on_outlined), icon: Icon(Icons.close)),
            SizedBox(height: 60.h,),
            PrimaryButton(theme: theme, title: "Continoue", ontap: (){
              controller.locationToSucessPage();
            })
          ],
        ),
      ),
    );
  }
}
