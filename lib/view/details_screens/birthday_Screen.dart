
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:video_call/const/conts.dart';

import '../../model/ads_screen.dart';
import '../../provider/home_provider.dart';

class User_Birthday extends StatefulWidget {
  const User_Birthday({Key? key}) : super(key: key);

  @override
  State<User_Birthday> createState() => _User_BirthdayState();
}

class _User_BirthdayState extends State<User_Birthday> {
  double ? height;
  double ? width;
  Home_Provider? home_providerT;
  Home_Provider? home_providerF;
  bool isloading=false;
  NativeAd? nativead;
  bool isAdLoaded = false;

  @override
  void initState() {
    super.initState();
    nat();
    bannerAds();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    home_providerF = Provider.of<Home_Provider>(context,listen: false);
    home_providerT = Provider.of<Home_Provider>(context,listen: true);
    return WillPopScope(
      onWillPop: dialog,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
         body: Stack(
           children: [
             Image.asset("assets/image/Rectangle 1.jpg",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
             Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pushNamed(context,'gender');
                      }, icon: Icon(Icons.arrow_back,size: 35,color: Colors.white,)),
                    ],
                  ),
                  isAdLoaded ?
                  Container(
                    height: height!*0.15,
                    alignment: Alignment.center,
                    child: AdWidget(ad: nativead!),
                  ) :
                  Container(
                      height: height!*0.15,
                      alignment: Alignment.center,
                      child: CircularProgressIndicator()
                  ),
                  SizedBox(height: height!*0.02,),

                  Text("My Birthday",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                  SizedBox(height: height!*0.05,),
                  InkWell(
                    onTap: (){
                        timeDialog();
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Neumorphic(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                            depth: 4,
                            lightSource: LightSource.topLeft,
                            color: Colors.white60,
                          ),child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/image/Rectangle 2.jpg",fit: BoxFit.fill, height: height!*0.065,width: width!*0.4,)),),
                         Text("${Provider.of<Home_Provider>(context, listen: true).date.day}/${Provider.of<Home_Provider>(context, listen: true).date.month}/${Provider.of<Home_Provider>(context, listen: true).date.year}", style: TextStyle(fontSize: 20,color: Colors.white),)
                           ],
                    ),
                  ),
                  SizedBox(height: height!*0.3,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          InkWell(
                            onTap: (){
                              interAds();
                              setState(() {
                                isloading=true;
                              });
                              Timer(Duration(seconds: 3), () {
                                setState(() {
                                  isloading=false;
                                });
                                Navigator.pushNamed(context,'nick');
                              });
                            },
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                                depth: 4,
                                lightSource: LightSource.topLeft,
                                color: Colors.white60,
                              ),child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/image/Rectangle 2.jpg",fit: BoxFit.fill, height: height!*0.07,width: width!*0.85,)),),
                          ),
                          Text('Confirm',style: TextStyle(color: Colors.white,fontSize: 20),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height!*0.02,),
                  Text("Not allowed to use under 18",style: TextStyle(color: Colors.white,),),

                ],
              ),
             isloading?Center(child: Lottie.asset("assets/video/131601-circle-load.json",width: 80,height: 80)):Container()
           ],
         ),
        ),
      ),
    );
  }
  Future<bool> dialog() async {
    back();
    return await false;
  }
  void back() {
    Navigator.pushReplacementNamed(context, 'gender');
  }
  void timeDialog() async {
    var data = await showDatePicker(
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: Colors.pinkAccent, // <-- SEE HERE
                onPrimary: Colors.white, // <-- SEE HERE
                onSurface: Colors.blueAccent, // <-- SEE HERE
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                ),
              ),
            ),
            child: child!,
          );
        },
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(0),
        lastDate: DateTime(3000));
    Provider.of<Home_Provider>(context, listen: false).getdata(data);
  }
  void nat(){
    try
    {
      nativead = NativeAd(
        adUnitId: '$na',
        factoryId: 'listTile',
        request: const AdRequest(),
        listener: NativeAdListener(
            onAdLoaded: (_) {
              setState(() {
                isAdLoaded = true;
              });
            },
            onAdFailedToLoad: (ad, error) {
              nat();

            }),
      );
      nativead!.load();
    }
    on Exception
    {}
  }
}


