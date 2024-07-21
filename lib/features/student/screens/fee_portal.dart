import 'package:dorm_dynasty/common/app_bar.dart';
import 'package:flutter/material.dart';

class FeePortal extends StatefulWidget {
  const FeePortal({super.key});

  @override
  State<FeePortal> createState() => _FeePortalState();
}

class _FeePortalState extends State<FeePortal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Fee Portal"),
    );
  }
}
