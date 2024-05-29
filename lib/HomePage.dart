import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.dart';
import 'reg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _homeState();
}

class _homeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return   Container(
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
      padding: const EdgeInsets.all(0.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            _text(),
            const SizedBox(height: 20),
            _stButton(),



          ],

        ),

      ),
    );

  }


  Widget _text(){
    return Text("Welcome!",
      style: TextStyle(
        color: Colors.brown,
        fontSize: 66,
        letterSpacing: 2,
      ),
    );

  }

  Widget _stButton(){
    return ElevatedButton(onPressed:(){
      Navigator.push(context,
        MaterialPageRoute(builder: (context)=>reg()),
      );
    },


          child: Container(
            height: 125,
            width: 200,
            color: Colors.transparent,

            child: Text(
              "Tap to open",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                fontSize: 40,
                color: Colors.indigo,
            ),
            ),
          ),

    );
  }


}
