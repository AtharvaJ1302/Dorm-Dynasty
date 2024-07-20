import 'package:dorm_dynasty/theme/colors.dart';
import 'package:dorm_dynasty/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color? buttonColor;
  final VoidCallback onTap;
  final double? Size;
  const CustomButton({
    Key? key,
    required this.buttonText,
    this.buttonColor,
    required this.onTap,
    this.Size,
}): super(key : key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        height: 50.h,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Center(
          child: Text(buttonText,style: AppTextTheme.kLabelStyle.copyWith(
            color: buttonColor ??AppColors.kLight,
            fontSize: Size ?? 16
          ),
          ),
        ),
      ),
    );
  }
}
