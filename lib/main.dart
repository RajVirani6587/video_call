import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_call/provider/home_provider.dart';
import 'package:video_call/view/NICKNAME_SCREEN.dart';
import 'package:video_call/view/birthday_Screen.dart';
import 'package:video_call/view/first_Screen.dart';
import 'package:video_call/view/image_screen.dart';
import 'package:video_call/view/intro_screen.dart';
import 'package:video_call/view/demo.dart';
import 'package:video_call/view/sele_gender.dart';
import 'package:video_call/view/splash%20screen/splash_screen.dart';
void main(){

  runApp(
    MultiProvider(
      providers: [
        ListenableProvider(create: (contest)=>Home_Provider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //initialRoute: 'd',
        routes: {
          'd':(conest)=>Secode_Screen(),
          '/':(contest)=>splash_screen(),
          'intro':(contest)=>intro_Screen(),
          'home':(contest)=>Home_Screen(),
          'gender':(contest)=>selecte_gender(),
          'birth':(contest)=>User_Birthday(),
          'nick':(contest)=>Nickname_Screen(),
          'avatar':(contest)=>Image_Screen(),
        },
      ),
    ),
  );
}
