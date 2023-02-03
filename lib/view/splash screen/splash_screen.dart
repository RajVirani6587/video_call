import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  Widget build(BuildContext context) {
    isLogin();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Lottie.asset("assets/video/127373-video-call.json",fit: BoxFit.fill),
        ),
      ),
    );
  }

  void isLogin() async {
    Timer(Duration(seconds: 4), () =>
        Navigator.pushReplacementNamed(context, 'first'));
  }
}