import 'dart:ui';

import 'package:dorm_dynasty/common/constants.dart';
import 'package:dorm_dynasty/common/spacing.dart';
import 'package:dorm_dynasty/features/admin/screens/create_staff_screen.dart';
import 'package:dorm_dynasty/features/admin/screens/issue_screen.dart';
import 'package:dorm_dynasty/features/admin/screens/room_change.dart';
import 'package:dorm_dynasty/features/admin/screens/staff_display_screen.dart';
import 'package:dorm_dynasty/features/home/screens/widgets/category_card.dart';
import 'package:dorm_dynasty/features/student/screens/create_issue_screen.dart';
import 'package:dorm_dynasty/features/student/screens/fee_payment.dart';
import 'package:dorm_dynasty/features/student/screens/room_availability_screen.dart';
import 'package:dorm_dynasty/features/student/screens/student_id_card.dart';
import 'package:dorm_dynasty/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: AppTextTheme.kLabelStyle.copyWith(fontSize: 22.sp),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: InkWell(
                onTap: () {}, child: SvgPicture.asset(AppConstants.profile)),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Column(
          children: [
            heightSpacer(30),
            SingleChildScrollView(
              child: Container(
                height: 140.h,
                width: double.maxFinite,
                decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(0),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 8,
                        offset: Offset(2, 4),
                        spreadRadius: 0,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Atharva Joshi",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 24.sp,
                            ),
                          ),
                          heightSpacer(15),
                          Text(
                            "Room No. : 101",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                            ),
                          ),
                          Text(
                            "Block No. : A",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      ),
                      widthSpacer(10),
                      Column(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) =>
                                          const StudentCreateIssue()),
                                );
                              },
                              child: SvgPicture.asset(AppConstants.createIssue)),
                          Text(
                            "Create Issue",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w700),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            heightSpacer(30),
            Container(
              width: double.maxFinite,
              color: Color(0xFFC8E6C9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heightSpacer(20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  heightSpacer(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryCard(
                        category: 'Room\nAvailability',
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                const RoomAvailabilityScreen()),
                          );
                        },
                        image: AppConstants.roomAvailability,
                      ),
                      CategoryCard(
                        category: 'All\nIssues',
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                const IssueScreen(),
                            ),
                          );
                        },
                        image: AppConstants.allIssues,
                      ),
                      CategoryCard(
                        category: 'Staff\nMembers',
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                const StaffDisplayScreen()),
                          );
                        },
                        image: AppConstants.staffMember,
                      ),
                    ],
                  ),
                  heightSpacer(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryCard(
                        category: 'Create\nStaff',
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                const CreateStaffScreen()),
                          );
                        },
                        image: AppConstants.createStaff,
                      ),
                      CategoryCard(
                        category: 'Hostel\nFees',
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) =>
                              const FeePayment(),
                            ),
                          );
                        },
                        image: AppConstants.hostelFee,
                      ),
                      CategoryCard(
                        category: 'Change\nRoom',
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                const RoomChange(),
                            ),
                          );
                        },
                        image: AppConstants.roomChange,
                      ),
                    ],
                  ),
                  heightSpacer(20),
                  SingleChildScrollView(
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CategoryCard(
                          category: 'Change\nRoom',
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) =>
                                const RoomChange(),
                              ),
                            );
                          },
                          image: AppConstants.roomChange,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
