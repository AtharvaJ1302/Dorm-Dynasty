import 'dart:ui';

import 'package:dorm_dynasty/common/app_bar.dart';
import 'package:dorm_dynasty/common/constants.dart';
import 'package:dorm_dynasty/common/spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoomAvailabilityScreen extends StatefulWidget {
  const RoomAvailabilityScreen({super.key});

  @override
  State<RoomAvailabilityScreen> createState() => _RoomAvailabilityScreenState();
}

class _RoomAvailabilityScreenState extends State<RoomAvailabilityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Available Rooms"),
      body: Column(
        children: [
          heightSpacer(20),
          ListView.builder(
            padding: EdgeInsets.all(10.h),
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: RoomCard(),
                );
              })
        ],
      ),
    );
  }
}

class RoomCard extends StatelessWidget {
  const RoomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
          bottomLeft: Radius.circular(30.r),
        ),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset(
                AppConstants.bed,
                height: 70.h,
                width: 70.w,
              ),
              const Text(
                "Room No. : 202",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          widthSpacer(15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Block",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              heightSpacer(5),
              Text(
                "Capacity",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              heightSpacer(5),
              Text(
                "Current Capacity",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              heightSpacer(5),
              Text(
                "Room type",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              heightSpacer(5),
              Row(
                children: [
                  Text(
                    "Status",
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  widthSpacer(10),
                  Container(
                    height: 30.h,
                    padding: const EdgeInsets.only(left: 5,right: 5,bottom: 5,top: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightGreenAccent,
                    ),
                    child: Center(
                      child: Text(
                        "Available",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
