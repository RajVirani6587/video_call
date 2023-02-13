import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../model/sharedpref_screen.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Lottie.asset("assets/video/127373-video-call.json",fit: BoxFit.fill),
        ),
      ),
    );
  }

  void isLogin()async{
    SHRModel s1 = await getSHR();
    if(s1.login == true){
      Timer(Duration(seconds: 3),
              ()=>Navigator.pushReplacementNamed(context,'selected')
      );}
    else{
      Timer(Duration(seconds: 3),
              ()=>Navigator.pushReplacementNamed(context, 'intro')
      );
    }
  }
}