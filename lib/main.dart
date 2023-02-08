import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call/provider/home_provider.dart';
import 'package:video_call/view/details_screens/NICKNAME_SCREEN.dart';
import 'package:video_call/view/details_screens/birthday_Screen.dart';
import 'package:video_call/view/details_screens/first_Screen.dart';
import 'package:video_call/view/details_screens/image_screen.dart';
import 'package:video_call/view/home/video_play_screen.dart';
import 'package:video_call/view/home/video_screen.dart';
import 'package:video_call/view/splash%20screen/intro_screen.dart';
import 'package:video_call/view/demo.dart';
import 'package:video_call/view/details_screens/sele_gender.dart';
import 'package:video_call/view/splash%20screen/bottem_bar.dart';
import 'package:video_call/view/splash%20screen/splash_screen.dart';
import 'package:video_call/view/details_screens/your_goal_screen.dart';
void main(){

  runApp(
    MultiProvider(
      providers: [
        ListenableProvider(create: (contest)=>Home_Provider()),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType){
          return   MaterialApp(
            theme: ThemeData(
              accentColor: Colors.black,
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: 'play',
            routes: {
              'd':(conest)=>VideoApp(),
              '/':(contest)=>splash_screen(),
              'intro':(contest)=>intro_Screen(),
              'home':(contest)=>Home_Screen(),
              'gender':(contest)=>selecte_gender(),
              'birth':(contest)=>User_Birthday(),
              'nick':(contest)=>Nickname_Screen(),
              'avatar':(contest)=>Image_Screen(),
              'your':(contest)=>your_Screen(),
              'bottom':(contest)=>Bottom_Screen(),
              'video':(contest)=>Video_Screen(),
              'play':(contest)=>Second_Screen(),
            },
          );
        },
      ),
    ),
  );
}
