import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grabview/Pages/Login_Screen/Login_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 3), () async {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (c) =>  LoginPage()));
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 300,),
            Image.asset("assets/images/logo-sm.png",height: 178,width: 186,),
            SizedBox(height: 300,),
            Text("All rights reserved by GrapView ",style: TextStyle(color: Colors.black),),
          ],
        ),
      ),
    );
  }
}