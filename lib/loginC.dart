import 'package:flutter/material.dart';
import 'login.dart';
import 'package:get/get.dart';

class loginC extends GetxController{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  void Onlogin(){
    if(GetUtils.isEmail(email.text)&&pass.text.length>=6)
      {
        Get.to({});
      }

  }




}

