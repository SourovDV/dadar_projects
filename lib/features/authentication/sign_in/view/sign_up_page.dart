import 'package:dadar_projects/common/utils/Image_path/image_path.dart';
import 'package:dadar_projects/common/utils/app_color/app_color.dart';
import 'package:dadar_projects/features/authentication/sign_in/controller/sign_up_controller.dart';
import 'package:dadar_projects/features/authentication/widgth/common_text_form_field.dart';
import 'package:dadar_projects/features/authentication/widgth/primary_button.dart';
import 'package:dadar_projects/features/onboading/widgths/button_widgth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme =Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColor.surfacePrimary,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
              children: [
                SizedBox(height: 167.h,),
                Image.asset(ImagePath.splashLogo),
                SizedBox(height: 30.h,),
                CommonTextFormFiled(hintext: "Name", icon: Icon(Icons.abc)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CommonTextFormFiled(hintext: "example@gmail.com",prefiex: Icon(Icons.email), icon: Icon(Icons.check_circle_outline)),
                ),
                CommonTextFormFiled(hintext: "Password", icon: Icon(Icons.remove_red_eye)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CommonTextFormFiled(hintext: "Comfirm Password", icon: Icon(Icons.remove_red_eye)),
                ),
                PrimaryButton(theme: theme, title: "Sign Up", ontap: (){
                  controller.signUptoLocationScreen();
                }),
                SizedBox(height: 210.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an accound ? ",style: theme.labelMedium,),
                    Text("Sign In",style: theme.labelMedium?.copyWith(fontSize: 22),),
                  ],
                )
              ],
          ),
        ),
      ),
    );
  }
}
