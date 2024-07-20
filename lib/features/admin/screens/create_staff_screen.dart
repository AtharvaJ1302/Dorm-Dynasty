import 'package:dorm_dynasty/common/app_bar.dart';
import 'package:dorm_dynasty/common/spacing.dart';
import 'package:dorm_dynasty/features/auth/widgets/custom_button.dart';
import 'package:dorm_dynasty/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/custom_text_field.dart';

class CreateStaffScreen extends StatefulWidget {
  const CreateStaffScreen({super.key});

  @override
  State<CreateStaffScreen> createState() => _CreateStaffScreenState();
}

class _CreateStaffScreenState extends State<CreateStaffScreen> {
  static final _formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController jobRole = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    firstName.dispose();
    lastName.dispose();
    phoneNumber.dispose();
    jobRole.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Create staff"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Username",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: username,
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
                heightSpacer(15),
                Text(
                  "First Name",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: firstName,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffd1d8ff)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your first name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'First Name Is Required';
                    }
                    return null;
                  },
                ),
                Text(
                  "Last Name",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: lastName,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffd1d8ff)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your last name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Last Name Is Required';
                    }
                    return null;
                  },
                ),
                Text(
                  "Job Role",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: jobRole,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffd1d8ff)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your Job",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Job Is Required';
                    }
                    return null;
                  },
                ),
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password Is Required';
                    }
                    return null;
                  },
                ),
                Text(
                  "Phone Number",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: phoneNumber,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffd1d8ff)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your phone number",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Phone Number Is Required';
                    }
                    return null;
                  },
                ),
                heightSpacer(40),
                CustomButton(
                  buttonText: "Create Staff",
                  onTap: () {
                    if(_formKey.currentState!.validate()){}
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
