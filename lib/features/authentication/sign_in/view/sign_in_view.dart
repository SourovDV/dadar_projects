import 'package:dadar_projects/common/utils/Image_path/image_path.dart';
import 'package:dadar_projects/common/utils/app_color/app_color.dart';
import 'package:dadar_projects/features/authentication/sign_in/controller/sign_in_controller.dart';
import 'package:dadar_projects/features/authentication/widgth/common_text_form_field.dart';
import 'package:dadar_projects/features/authentication/widgth/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppColor.surfacePrimary,
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 16),
       child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
            SizedBox(height: 80.h,),
            Container(
              child: Column(
                children: [
                  Image.asset(ImagePath.splashLogo),
                  SizedBox(height: 30.h,),
                  CommonTextFormFiled(hintext: "example@gmail.com", icon: Icon(Icons.check_box_outlined),prefiex: Icon(Icons.email),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: CommonTextFormFiled(hintext: "password", icon: Icon(Icons.remove_red_eye_outlined),),
                  ),
                  PrimaryButton(theme: theme, title:"Sign In",),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      InkWell(
                          onTap: ()=>controller.goToForgotPage(),
                          child: Text("Forgot Password?",style: theme.labelSmall?.copyWith(color: Colors.white70),))
                    ],
                  ),
                ],
              ),
            ),
           Padding(
             padding: const EdgeInsets.all(35.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Don’t Have An Account?",style: theme.labelSmall?.copyWith(color: Colors.white70),),
                 SizedBox(width: 5.w,),
                 Text("Sign Up",style: theme.labelMedium?.copyWith(color: Colors.white70,fontSize: 20),)
               ],
             ),
           ),


         ],
       ),
     ),
    );
  }
}


