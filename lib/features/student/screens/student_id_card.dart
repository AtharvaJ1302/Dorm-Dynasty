import 'package:dorm_dynasty/common/app_bar.dart';
import 'package:flutter/material.dart';

class StudentIdCard extends StatefulWidget {
  const StudentIdCard({super.key});

  @override
  State<StudentIdCard> createState() => _StudentIdCardState();
}

class _StudentIdCardState extends State<StudentIdCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Your ID-Card"),
    );
  }
}
