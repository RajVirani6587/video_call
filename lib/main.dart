import 'package:flutter/material.dart';
import 'package:video_call/view/first_Screen.dart';
import 'package:video_call/view/splash%20screen/splash_screen.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(contest)=>splash_screen(),
        'first':(contest)=>Home_Screen(),
      },
    ),
  );
}
