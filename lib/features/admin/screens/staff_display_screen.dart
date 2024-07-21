import 'package:dorm_dynasty/common/app_bar.dart';
import 'package:dorm_dynasty/common/constants.dart';
import 'package:dorm_dynasty/common/spacing.dart';
import 'package:dorm_dynasty/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StaffDisplayScreen extends StatefulWidget {
  const StaffDisplayScreen({super.key});

  @override
  State<StaffDisplayScreen> createState() => _StaffDisplayScreenState();
}

class _StaffDisplayScreenState extends State<StaffDisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Staffs"),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 2 / 1.2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16,
            ),
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(16),
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      )),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                AppConstants.person,
                                width: 90.w,
                                height: 90.h,
                              ),
                              heightSpacer(20),
                              Text(
                                "Hostel Warden",
                                style: AppTextTheme.kLabelStyle,
                              ),
                            ],
                          ),
                          widthSpacer(10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                heightSpacer(10),
                                Text(
                                  "Name: John Doe",
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                                heightSpacer(8),
                                Text(
                                  "Email: JohnDoe@gmail.com",
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                                heightSpacer(8),
                                Text(
                                  "Contact: 9865743021",
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                                heightSpacer(8),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Delete",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
