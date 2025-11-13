import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.theme, required this.title, required this.ontap,
  });

  final TextTheme theme;
  final String title;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(8)
        ),
        height: 48.h,
        width: double.infinity,
        child: Center(child: Text(title.toString(),style: theme.labelMedium,)),
      ),
    );
  }
}
