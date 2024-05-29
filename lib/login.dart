import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signin_page/loginC.dart';
import 'package:login_signin_page/reg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

  Widget build(BuildContext context) {
    var c = Get.put(loginC());
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.white,
            Colors.blueGrey,
          ]

        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white70,
        body: _page(),
      ),
    );
  }

Widget _page(){
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           _icon(),
          const SizedBox(height: 25),
          _inputfield("Email",Get.find<loginC>().email),
          const SizedBox(height: 15),
          _inputfield("Password",Get.find<loginC>().pass,isPassword: true),
          const SizedBox(height: 20),
          _loginBtn(),
          const SizedBox(height: 5),
          _extrText(),

        ],

      ),

    ),
  );

}

Widget _icon(){
  return Container(

    child: const Icon(Icons.account_circle ,color: Colors.black87,size: 140),
  );

}
Widget _inputfield(String hintText,TextEditingController controller,{isPassword = false}){

    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: Colors.black26,width: 3)
    );
    return TextField(

      style: const TextStyle(color: Colors.black),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black26),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
}

Widget _loginBtn(){
    return ElevatedButton(
        onPressed: (){},
        child: SizedBox(width:100 ,
            child:
            Text("LOGIN ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20 , color: Colors.black87),
            ),
        ),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
       padding: const EdgeInsets.symmetric(vertical: 10),
      ),
    );
}
  
Widget _extrText(){
    
    return TextButton(onPressed: (){
      Navigator.push(context,
      MaterialPageRoute(builder: (context)=>reg()),
      );
    },
        child: Text("Register your account" ,
          style: TextStyle(fontSize: 18,
          color: Colors.black87),

        ),
    );
}

}

