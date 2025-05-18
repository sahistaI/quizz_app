
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level_z/home_page.dart';
import 'package:level_z/screen/auth_page/login_page.dart';

import '../utils/app_colors.dart';

class Splashscreen extends StatefulWidget{
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
           decoration: BoxDecoration(
             shape: BoxShape.circle,
          /*gradient: LinearGradient(
          begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:[Colors.blue.withOpacity(0.5),
              Colors.deepPurpleAccent.withOpacity(0.7)]),*/
      ),
          child: SizedBox(
            width: 180, height: 180,
            child: Image.asset("assets/images/bg_logo.png"),
          ),
        ),

      ),
    );
  }
}