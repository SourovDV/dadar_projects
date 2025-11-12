import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonNextButton extends StatelessWidget {
  const CommonNextButton({super.key, required this.ontap});

  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:ontap ,
      child: Container(
        height: 44.h,
        width: 115.w,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            "Next",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
    );
  }
}
