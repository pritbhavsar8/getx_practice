import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController
{
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool islogin = false.obs;
  RxString msg ="".obs;

  Login(context) async{
    var params = {
      "name": email.text.toString(),
      "password": password.text.toString(),
      "device_token":"12345678",
      "device_os":"android"
    };
    var h = {
      "Content-Type":"application/json"
    };
    Uri url = Uri.parse("https://begratefulapp.ca/api/login");
    var response = await http.post(url,body: jsonEncode(params),headers: h);
    if(response.statusCode==200){
      var body = response.body.toString();
      var json = jsonDecode(body);
      if(json["result"]=="success"){
        islogin.value = true;
        msg.value = json["message"].toString();

      }
      else{
        islogin.value = false;
        msg.value = json["message"].toString();
      }
    }
  }


}