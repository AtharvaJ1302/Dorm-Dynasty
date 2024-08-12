import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiProvider extends ChangeNotifier {
  final String baseUrl;
  final http.Client httpClient;

  ApiProvider({
    required this.baseUrl,
    required this.httpClient,
  });

  Future<http.Response> postResponse(String endpoint,{
    Map<String,String>? headers,
    Map<String,dynamic>? body,
  })async{
  final Uri uri = Uri.parse("$baseUrl$endpoint");
  final Map<String,String> headers = {
    'Content-Type' : 'application/json',
  };
  final String jsonBody = body!=null?json.encode(body):'';
  final response = await http.post(uri,headers: headers,body: jsonBody);
  print("Request : ${response.body}");
  return response;
  }
}
