import 'package:dorm_dynasty/common/spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  String category;
  String image;
  VoidCallback onTap;

   CategoryCard({
    Key? key,
    required this.category,
    required this.onTap,
    required this.image,
    }) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:  onTap,
      child: Container(
        padding: EdgeInsets.all(14),
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          shadows: [
            BoxShadow(
              // color: Color(0xFF81C784),
              color: Colors.black,
              blurRadius: 4,
              offset:  Offset(1, 4),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: 70.h,
              width: 70.w,
              child: Image.asset(image),
            ),
            heightSpacer(10),
            Text(
              category,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.sp,
              ),
            ),
            heightSpacer(10),
          ],
        ),
      ),
    );
  }
}
