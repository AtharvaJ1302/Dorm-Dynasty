import 'package:dorm_dynasty/common/constants.dart';
import 'package:dorm_dynasty/common/spacing.dart';
import 'package:dorm_dynasty/features/auth/widgets/custom_button.dart';
import 'package:dorm_dynasty/theme/colors.dart';
import 'package:dorm_dynasty/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/custom_text_field.dart';
import '../../home/screens/home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  static final _formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  String? selectedBlock;
  String? selectedRoom;

  List<String> blockOptions = ['A', 'B','C','D'];
  List<String> roomOptionA = ['101', '102', '103', '104'];
  List<String> roomOptionB = ['201', '202', '203', '204'];

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    firstName.dispose();
    lastName.dispose();
    phoneNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightSpacer(40),
                Center(
                  child: Image.asset(
                    AppConstants.logo,
                    height: 150.h,
                    width: 150.w,
                  ),
                ),
                heightSpacer(10),
                Center(
                  child: Text(
                    "Register Your Account",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: const Color(0xff333333),
                        fontWeight: FontWeight.w700),
                  ),
                ),
                heightSpacer(30),
                Text(
                  "Username",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffd1d8ff)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your username",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Username Is Required';
                    }
                    return null;
                  },
                ),
                heightSpacer(10),
                Text(
                  "First Name",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffd1d8ff)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your First Name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'First Name Is Required';
                    }
                    return null;
                  },
                ),
                heightSpacer(10),
                Text(
                  "Last Name",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffd1d8ff)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your Last Name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Last Name Is Required';
                    }
                    return null;
                  },
                ),
                heightSpacer(10),
                Text(
                  "Email",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffd1d8ff)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your email",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email Is Required';
                    }
                    return null;
                  },
                ),
                heightSpacer(10),
                Text(
                  "Password",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffd1d8ff)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your password",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password Is Required';
                    }
                    return null;
                  },
                ),
                heightSpacer(10),
                Text(
                  "Phone Number",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffd1d8ff)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your Phone Number",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Phone Number Is Required';
                    }
                    return null;
                  },
                ),
                heightSpacer(20),
                Row(
                  children: [
                    //first dropDown
                    Container(
                      height: 50.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 1,
                            color: Color(0xff2eBb57),
                          ),
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                      ),
                      child: Row(
                        children: [
                          widthSpacer(20),
                          const Text("Block No."),
                          widthSpacer(8),
                          DropdownButton(
                            value: selectedBlock,
                            onChanged: (String? newValue) {
                              setState(
                                () {
                                  selectedBlock = newValue;
                                  selectedRoom = null;
                                },
                              );
                            },
                            items: blockOptions.map((String block) {
                              return DropdownMenuItem(
                                  value: block, child: Text(block));
                            }).toList(),
                          ),
                          widthSpacer(20)
                        ],
                      ),
                    ),
                    widthSpacer(10),
                    //Second dropDown
                    Container(
                      height: 50.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 1,
                            color: Color(0xff2eBb57),
                          ),
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                      ),
                      child: Row(
                        children: [
                          widthSpacer(20),
                          const Text("Room No."),
                          widthSpacer(8),
                          DropdownButton<String>(
                            value: selectedRoom,
                            onChanged: (String? newValue) {
                              setState(
                                () {
                                  selectedRoom = newValue;
                                },
                              );
                            },
                            items: (selectedBlock == "A"
                                    ? roomOptionA
                                    : roomOptionB)
                                .map((String room) {
                              return DropdownMenuItem<String>(
                                value: room,
                                child: Text(room),
                              );
                            }).toList(),
                          ),
                          widthSpacer(20)
                        ],
                      ),
                    )
                  ],
                ),
                heightSpacer(25),
                CustomButton(
                    buttonText: 'Register',
                    onTap: ()  {

                    }),
                heightSpacer(10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
