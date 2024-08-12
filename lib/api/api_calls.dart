import 'dart:convert';

import 'package:dorm_dynasty/api/api_provider.dart';
import 'package:dorm_dynasty/api/api_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ApiCalls {
  Future<void> handleLogin(
      BuildContext context, String email, String password) async {
    final apiProvider = Provider.of<ApiProvider>(context, listen: false);
    final Map<String, dynamic> requestData = {
      "emailId": email,
      "password": password,
    };
    final response = await apiProvider.postResponse(
      ApiUtils.login,
      headers: {
        'Content-Type': 'application/json',
      },
      body: requestData,
    );
    if(response.statusCode == 200){
      final Map<String,dynamic> responseBody = json.decode(response.body);
      if(responseBody['status'] == "FAILED") {
        print("failed t login");
        }
      print("body: ${response.body}");
      }
    }
  }

