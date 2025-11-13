import 'package:dadar_projects/common/utils/Image_path/image_path.dart';
import 'package:dadar_projects/common/utils/app_color/app_color.dart';
import 'package:dadar_projects/features/authentication/sign_in/controller/forgot_controller.dart';
import 'package:dadar_projects/features/authentication/widgth/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends GetView<ForgotController> {
  const OtpScreen({super.key});

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImagePath.otpScreen),
            Text("We've Sent a Code to exa...@email.com",style: theme.labelSmall?.copyWith(color: Colors.white),),
            SizedBox(height: 30,),
            buildPinCodeTextField(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20.h,),
                Text("If you didn’t receive a codsd.",style: theme.labelSmall?.copyWith(color: Colors.white),),
        
                Text("Resend",style: theme.labelLarge?.copyWith(fontSize: 22),)
              ],
            ),
            SizedBox(height: 400.h,),
            PrimaryButton(theme: theme, title: "Verify", ontap:(){
              controller.otpToResetPassword();
            })
          ],
        ),
      ),
    );
  }

  PinCodeTextField buildPinCodeTextField(BuildContext context) {
    return PinCodeTextField(
          length: 6,
          obscureText: false,
          animationType: AnimationType.fade,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 50,
            fieldWidth: 50,
            activeFillColor: Colors.white,
            selectedColor: Colors.white,
            activeColor: Colors.white70,
            inactiveFillColor: Colors.white,
            selectedFillColor: Colors.white70
          ),
          animationDuration: Duration(milliseconds: 300),
          backgroundColor: Colors.transparent,
          enableActiveFill: true,

          beforeTextPaste: (text) {
            print("Allowing to paste $text");
            return true;
          }, appContext: context,
        );
  }
}


