import 'package:dorm_dynasty/common/constants.dart';
import 'package:dorm_dynasty/common/custom_text_field.dart';
import 'package:dorm_dynasty/common/spacing.dart';
import 'package:dorm_dynasty/features/auth/screens/register_screen.dart';
import 'package:dorm_dynasty/theme/colors.dart';
import 'package:dorm_dynasty/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../home/screens/home_screen.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static final _formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          // padding: const EdgeInsets.all(8.0),
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    AppConstants.logo,
                    height: 350.h,
                  ),
                ),
                heightSpacer(0),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Login to your account",
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: const Color(0xff333333),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                heightSpacer(25),
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
                  inputHint: "Enter your email address",
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Email Is Required';
                    }
                    return null;
                  },
                ),
                heightSpacer(20),
                Text(
                  "Password",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: password,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffd1d8ff)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your password",
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Password Is Required';
                    }
                    return null;
                  },
                ),
                heightSpacer(20),
                CustomButton(
                  buttonText: 'Login',
                  Size: 16,
                  onTap: () {
                    // if(_formKey.currentState!.validate()){
                    //    print("Validate");
                    // }
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  buttonColor: Colors.white,
                ),
                heightSpacer(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()),
                        );
                      },
                      child: Text(
                        "  Register",
                        style: AppTextTheme.kLabelStyle.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.kGreenColor,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
