import 'dart:async';

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:video_call/model/ads_screen.dart';

class intro_Screen extends StatefulWidget {
  const intro_Screen({Key? key}) : super(key: key);

  @override
  State<intro_Screen> createState() => _intro_ScreenState();
}

    class _intro_ScreenState extends State<intro_Screen> {
      double ? height;
      double ? width;
      bool isloading=false;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
          body: Stack(alignment: Alignment.bottomCenter,
            children: [
              IntroductionScreen(
                globalBackgroundColor: Colors.pinkAccent.shade100,
                done: Text("START",style: TextStyle(color: Colors.green),),
                showDoneButton: true,
                onDone: (){
                  interAds();
                  setState(() {
                    isloading=true;
                  });
                  Timer(Duration(seconds: 4), () {
                    setState(() {
                      isloading=false;
                    });
                    Navigator.pushReplacementNamed(context, 'home');
                  });
                },
                next: Icon(Icons.arrow_forward,size: 20,color: Colors.green,),
                showNextButton: true,
                pages: [
                  PageViewModel(
                    footer: Lottie.asset("assets/video/95225-background.json"),
                    title: "Find",
                    body: "    Find interesting friends nearby" ,
                    image: Image.asset("assets/image/intro1 1.jpg",height:height!*0.6,width: width!*0.95,),
                  ),
                  PageViewModel(
                    decoration: PageDecoration(),
                    footer: Lottie.asset("assets/video/5756-like-5x.json"),
                    title: "Chat",
                    body: "    Share interesting things \n   With friends",
                    image: Image.asset("assets/image/intro2 1.jpg",height:height!*0.6,width: width!*0.95,),
                  ),
                  PageViewModel(
                    footer: Lottie.asset("assets/video/532-kiss.json"),
                    title: "Video",
                    body: "  Post your Popular videos.",
                    image: Image.asset("assets/image/intro3 1.jpg",height:height!*0.6,width: width!*0.95,),
                  ),
                  PageViewModel(
                    footer: Lottie.asset("assets/video/88788-like-icon.json"),
                    title: "Meet",
                    body: "   Meet your friends and New Friends.",
                    image: Image.asset("assets/image/intro4 1.jpg",height:height!*0.6,width: width!*0.95,),
                  ),
                ],
              ),
              isloading?Center(child: CircularProgressIndicator(),):Container()

            ],
          ),
        )
    );
  }
}