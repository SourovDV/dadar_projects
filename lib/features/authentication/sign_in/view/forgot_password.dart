import 'package:dadar_projects/common/utils/Image_path/image_path.dart';
import 'package:dadar_projects/common/utils/app_color/app_color.dart';
import 'package:dadar_projects/features/authentication/sign_in/controller/forgot_controller.dart';
import 'package:dadar_projects/features/authentication/widgth/common_text_form_field.dart';
import 'package:dadar_projects/features/authentication/widgth/primary_button.dart';
import 'package:dadar_projects/features/onboading/widgths/button_widgth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgotPassword extends GetView<ForgotController> {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppColor.surfacePrimary,
      appBar: AppBar(
        backgroundColor: AppColor.surfacePrimary,
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 131.h,),
            Image.asset(ImagePath.forgotScree),
            SizedBox(height: 20.h,),
            Text("Forgot password",style:theme.labelMedium?.copyWith(fontSize: 24,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            Text("Enter your Email to reset your password.",style: theme.labelMedium,),
            SizedBox(height: 20.h,),
            CommonTextFormFiled(hintext: "example@gmail.com",prefiex: Icon(Icons.email), icon: Icon(Icons.check_circle_outline)),
            SizedBox(height: 235,),
            PrimaryButton(theme: theme, title: "Get Otp", ontap: () {
              controller.forgotToOptScreen();
            },)
          ],
        ),
      ),
    );
  }
}
