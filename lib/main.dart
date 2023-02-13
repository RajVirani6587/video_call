import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call/provider/home_provider.dart';
import 'package:video_call/view/details_screens/NICKNAME_SCREEN.dart';
import 'package:video_call/view/details_screens/birthday_Screen.dart';
import 'package:video_call/view/details_screens/first_Screen.dart';
import 'package:video_call/view/details_screens/image_screen.dart';
import 'package:video_call/view/details_screens/selecte_screen.dart';
import 'package:video_call/view/female/Contrary_Language_screen/language_screen.dart';
import 'package:video_call/view/female/bottem_bar.dart';
import 'package:video_call/view/female/home/video_screen.dart';
import 'package:video_call/view/female/live/chat_screen.dart';
import 'package:video_call/view/female/Contrary_Language_screen/contrary_screen.dart';
import 'package:video_call/view/female/live/live_screen.dart';
import 'package:video_call/view/female/post/store_screen.dart';
import 'package:video_call/view/female/post/store_screen2.dart';
import 'package:video_call/view/female/post/store_screen3.dart';
import 'package:video_call/view/female/post/store_screen4.dart';
import 'package:video_call/view/female/post/store_screen5.dart';
import 'package:video_call/view/female/post/store_screen6.dart';
import 'package:video_call/view/female/post/store_screen7.dart';
import 'package:video_call/view/female/profile/porfile_screen.dart';
import 'package:video_call/view/female/post/post_screen.dart';
import 'package:video_call/view/female/Contrary_Language_screen/tabbar_Screen.dart';
import 'package:video_call/view/female/home/video_play_screen.dart';
import 'package:video_call/view/female/profile/profilechat_screen.dart';
import 'package:video_call/view/splash%20screen/intro_screen.dart';
import 'package:video_call/view/demo.dart';
import 'package:video_call/view/details_screens/sele_gender.dart';
import 'package:video_call/view/splash%20screen/splash_screen.dart';
import 'package:video_call/view/details_screens/your_goal_screen.dart';

void main()async{

  WidgetsFlutterBinding.ensureInitialized(); //Add this
  await FaceCamera.initialize();

  runApp(
    MultiProvider(
      providers: [
        ListenableProvider(create: (contest)=>Home_Provider()),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType){
          return   MaterialApp(
            theme: ThemeData(
            ),
            debugShowCheckedModeBanner: false,
           //initialRoute: 'bottom',
            routes: {
              'd':(conest)=>            Call_screen(),
              '/':(contest)=>         splash_screen(),
              'intro':(contest)=>      intro_Screen(),
              'home':(contest)=>        Home_Screen(),
              'gender':(contest)=>   selecte_gender(),
              'birth':(contest)=>     User_Birthday(),
              'nick':(contest)=>    Nickname_Screen(),
              'avatar':(contest)=>     Image_Screen(),
              'your':(contest)=>        your_Screen(),
              'selected':(contest)=>Selected_Screen(),

              'bottom':(contest)=>    Bottom_Screen(),
              'video':(contest)=>      Video_Screen(),
              'play':(contest)=>      Second_Screen(),
              'live':(contest)=>        Live_Screen(),
              'chat':(contest)=>        Chat_Screen(),
              'contrary':(contest)=>Contrary_Screen(),
              'tab':(contest)=>ContraryTabbar_Screen(),
              'language':(contest)=>Language_Screen(),
              'Post':(contest)=>        Post_Screen(),
              'profile':(contest)=>  Profile_Screen(),
              'prochat':(context)=>Profilechat_Screen(),
              'store1':(context)=>Store_Screen1(),
              'store2':(context)=>Store_Screen2(),
              'store3':(context)=>Store_Screen3(),
              'store4':(context)=>Store_Screen4(),
              'store5':(context)=>Store_Screen5(),
              'store6':(context)=>Store_Screen6(),
              'store7':(context)=>Store_Screen7(),
            },
          );
        },
      ),
    ),
  );
}
