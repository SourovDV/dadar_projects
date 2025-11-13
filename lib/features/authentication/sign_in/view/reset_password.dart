import 'package:dadar_projects/common/utils/Image_path/image_path.dart';
import 'package:dadar_projects/common/utils/app_color/app_color.dart';
import 'package:dadar_projects/features/authentication/sign_in/controller/forgot_controller.dart';
import 'package:dadar_projects/features/authentication/widgth/common_text_form_field.dart';
import 'package:dadar_projects/features/authentication/widgth/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ResetPassword extends GetView<ForgotController> {
  const ResetPassword({super.key});

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
            Image.asset(ImagePath.resetPassword),
            SizedBox(height: 30.h,),
            Text("Reset password",style:theme.labelMedium,),
            SizedBox(height: 8.h,),
            Text("Password must have 8 characters",style: theme.labelSmall,),
             SizedBox(height: 20.h,),
             CommonTextFormFiled(hintext: "New Password", icon: Icon(Icons.remove_red_eye_outlined)),
            SizedBox(height: 20.h,),
            CommonTextFormFiled(hintext: "New Password", icon: Icon(Icons.remove_red_eye_outlined)),
            SizedBox(height: 211.h,),
            PrimaryButton(theme: theme, title: "Update Password", ontap: (){
              controller.resetToSignUpPage();
            })
          ],
        ),
      ),
    );
  }
}
