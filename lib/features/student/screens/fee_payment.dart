import 'package:dorm_dynasty/common/app_bar.dart';
import 'package:dorm_dynasty/common/constants.dart';
import 'package:dorm_dynasty/common/spacing.dart';
import 'package:dorm_dynasty/features/student/screens/fee_portal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeePayment extends StatelessWidget {
  const FeePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        "Fees",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppConstants.hostel,
              ),
              heightSpacer(40),
              Container(
                width: double.maxFinite,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      heightSpacer(20),
                      Text(
                        "Hostel Details",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      heightSpacer(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Block No : ",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                              Text(
                                "B",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Room No : ",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                              Text(
                                "201",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      heightSpacer(20),
                      Text(
                        "Payment Details",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      heightSpacer(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Maintenance Charges : ",
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            '\u{20B9}${3000}',
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      heightSpacer(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Parking Charges : ",
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            '\u{20B9}${500}',
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      heightSpacer(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Electricity Charges : ",
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            '\u{20B9}${5000}',
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      heightSpacer(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Room Charges : ",
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            '\u{20B9}${10000}',
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      heightSpacer(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Maintenance Charges : ",
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            '\u{20B9}${3000}',
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      heightSpacer(20),
                      const Divider(
                        color: Colors.black,
                      ),
                      heightSpacer(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Charges : ",
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            '\u{20B9}${24500}',
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      heightSpacer(15),
                    ],
                  ),
                ),
              ),
              heightSpacer(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) =>
                        const FeePortal(),
                      ),
                    );},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      width: 140.w,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Pay Fees",
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
            ],
          ),
        ),
      ),

    );
  }
}
