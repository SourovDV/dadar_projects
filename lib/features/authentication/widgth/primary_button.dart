import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.theme, required this.title,
  });

  final TextTheme theme;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(8)
      ),
      height: 48.h,
      width: double.infinity,
      child: Center(child: Text(title.toString(),style: theme.labelMedium,)),
    );
  }
}
