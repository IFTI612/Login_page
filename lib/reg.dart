import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signin_page/loginC.dart';
import 'regC.dart';
import 'login.dart';


class  reg extends StatefulWidget {
  const reg({super.key});

  @override
  State<reg> createState() => _regState();
}

class _regState extends State<reg> {
  @override


  Widget build(BuildContext context) {
    var r = Get.put(regC());
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
        padding: EdgeInsets.all(12.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(height: 25),
            _inputfield("User Name",Get.find<regC>().UserName),
            const SizedBox(height: 15),
            _inputfield("Email",Get.find<regC>().email),
            const SizedBox(height: 15),
            _inputfield("Set Password",Get.find<regC>().pass,isPassword: true),
            const SizedBox(height: 20),
            _regBtn(),
            const SizedBox(height: 5),
            _back_to_login(),
          ],
        ),
      ),

    );



}


Widget _icon(){
  return Container(
    child: const Icon(Icons.sailing_sharp,color: Colors.indigo,size: 70),
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

  Widget _regBtn(){

    return ElevatedButton(onPressed: (){},
        child:SizedBox(width: 100,
          child: Text("Sign In",
          textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20 , color: Colors.blueGrey),
          ),
        ),

      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 10),
        backgroundColor: Colors.white70,
      ),

    );

  }

  Widget _back_to_login() {

    return TextButton(onPressed: (){
      Navigator.push(context,
        MaterialPageRoute(builder: (context)=>LoginPage()),
      );
    },

        child:Text("Already registered?",
        style: TextStyle(fontSize: 18 , color: Colors.amber),
        ),

    );

  }


}
