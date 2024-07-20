import 'package:dorm_dynasty/common/app_bar.dart';
import 'package:dorm_dynasty/common/custom_text_field.dart';
import 'package:dorm_dynasty/common/spacing.dart';
import 'package:dorm_dynasty/features/auth/widgets/custom_button.dart';
import 'package:dorm_dynasty/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudentCreateIssue extends StatefulWidget {
  const StudentCreateIssue({super.key});

  @override
  State<StudentCreateIssue> createState() => _StudentCreateIssueState();
}

class _StudentCreateIssueState extends State<StudentCreateIssue> {
  TextEditingController studentComment = TextEditingController();

  String? selectedIssue;

  List<String> issues = [
    "Bathroom",
    "Bedroom",
    "Furniture",
    "Water",
    "Kitchen",
  ];

  @override
  void dispose(){
    studentComment.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Create Issue"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightSpacer(15),
                Text(
                  "Room Number",
                  style: AppTextTheme.kLabelStyle,
                ),
                heightSpacer(15),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  width: double.maxFinite,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1, color: Colors.lightBlueAccent),
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "201",
                      style: TextStyle(fontSize: 17.sp),
                    ),
                  ),
                ),
                heightSpacer(15),
                Text(
                  "Block",
                  style: AppTextTheme.kLabelStyle,
                ),
                heightSpacer(15),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  width: double.maxFinite,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1, color: Colors.lightBlueAccent),
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 17.sp),
                    ),
                  ),
                ),
                heightSpacer(15),
                Text(
                  "Email Id",
                  style: AppTextTheme.kLabelStyle,
                ),
                heightSpacer(15),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  width: double.maxFinite,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1, color: Colors.lightBlueAccent),
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "dummy@gmail.com",
                      style: TextStyle(fontSize: 17.sp),
                    ),
                  ),
                ),
                heightSpacer(15),
                Text(
                  "Phone Number",
                  style: AppTextTheme.kLabelStyle,
                ),
                heightSpacer(15),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  width: double.maxFinite,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1, color: Colors.lightBlueAccent),
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "7319846520",
                      style: TextStyle(fontSize: 17.sp),
                    ),
                  ),
                ),
                heightSpacer(15),
                Text(
                  "Issue you are facing",
                  style: AppTextTheme.kLabelStyle,
                ),
                heightSpacer(15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  width: double.maxFinite,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1, color: Colors.lightBlueAccent),
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: DropdownButton(
                    underline: SizedBox(),
                    isExpanded: true,
                    value: selectedIssue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedIssue = newValue;
                      });
                    },
                    items: issues.map((String issue) {
                      return DropdownMenuItem(
                        value: issue,
                        child: Text(issue),
                      );
                    }).toList(),
                  ),
                ),
                heightSpacer(15),
                Text(
                  "Comments",
                  style: AppTextTheme.kLabelStyle,
                ),
                heightSpacer(15),
                CustomTextField(
                  controller: studentComment,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Comment is required";
                    }
                    return null;
                  },
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: Color(0xffd1d8ff),
                    ),
                  ),
                ),
                heightSpacer(40),
                CustomButton(
                  buttonText: "Submit",
                  onTap: () {},
                ),
                heightSpacer(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
