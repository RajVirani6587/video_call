import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:video_call/const/conts.dart';
import 'package:video_call/provider/home_provider.dart';

import '../../model/ads_screen.dart';

class your_Screen extends StatefulWidget {
  const your_Screen({Key? key}) : super(key: key);

  @override
  State<your_Screen> createState() => _your_ScreenState();
}

class _your_ScreenState extends State<your_Screen> {
  double ? height;
  double ? width;
  Home_Provider?home_providert;
  Home_Provider?home_providerf;
  int cnt=0;
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
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    home_providerf = Provider.of<Home_Provider>(context,listen: false);

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: dialog,
      child: SafeArea(
      child: Scaffold(resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Image.asset("assets/image/Rectangle 1.jpg",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pushNamed(context, 'avatar');
                      }, icon: Icon(Icons.arrow_back,size: 35,color: Colors.white,)),
                    ],
                  ),
                  isAdLoaded ?
                  Container(
                    height: height!*0.13,
                    alignment: Alignment.center,
                    child: AdWidget(ad: nativead!),
                  ) :
                  Container(
                      height: height!*0.13,
                      alignment: Alignment.center,
                      child: CircularProgressIndicator()
                  ),
                  SizedBox(height: height!*0.01,),
                  Text("Your Goal",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  SizedBox(height: height!*0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(onTap: () {
                        interAds();
                        setState(() {
                          isloading=true;
                        });
                        Timer(Duration(seconds: 3), () {
                          setState(() {
                            isloading=false;
                          });
                          setState(() {
                            cnt=0;
                          });
                        });

                      },
                        child: Container(
                            padding: EdgeInsets.all(5),
                            height: height!*0.25,
                            width: width!*0.38,
                            decoration: BoxDecoration(
                                border: Border.all(color: cnt==0?Colors.white:Colors.transparent,width: 3),
                                borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(borderRadius: BorderRadius.circular(15),
                                child: Image.asset("assets/image/Group 5.png",
                                  height: height!*0.25,
                                  width: width!*0.38,
                                  fit: BoxFit.fill,))),
                      ),
                      InkWell(onTap: () {
                        interVideoAds();
                        setState(() {
                          isloading=true;
                        });
                        Timer(Duration(seconds: 7), () {
                          setState(() {
                            isloading=false;
                          });
                          setState(() {
                            cnt=1;
                          });
                        });
                      },
                        child: Container(
                            padding: EdgeInsets.all(5),
                            height: height!*0.25,
                            width: width!*0.38,
                            decoration: BoxDecoration(
                                border: Border.all(color: cnt==1?Colors.white:Colors.transparent,width: 3),
                                borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(borderRadius: BorderRadius.circular(15),
                                child: Image.asset("assets/image/Group 4.png",
                                  height: height!*0.25,
                                  width: width!*0.38,
                                  fit: BoxFit.fill,))),
                      ),
                    ],
                  ),
                  SizedBox(height: height!*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(onTap: () {
                        interAds();
                        setState(() {
                          isloading=true;
                        });
                        Timer(Duration(seconds: 3), () {
                          setState(() {
                            isloading=false;
                          });
                          setState(() {
                            cnt=2;
                          });
                        });
                      },
                        child: Container(
                          padding: EdgeInsets.all(5),
                            height: height!*0.25,
                            width: width!*0.38,
                            decoration: BoxDecoration(
                                border: Border.all(color: cnt==2?Colors.white:Colors.transparent,width: 3),
                                borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(borderRadius: BorderRadius.circular(15),
                                child: Image.asset("assets/image/Group 3.png",
                                  height: height!*0.25,
                                  width: width!*0.38,
                                  fit: BoxFit.fill,))),
                      ),
                      InkWell(onTap: () {
                        interVideoAds();
                        setState(() {
                          isloading=true;
                        });
                        Timer(Duration(seconds: 3), () {
                          setState(() {
                            isloading=false;
                          });
                          setState(() {
                            cnt=3;
                          });
                        });
                      },
                        child: Container(
                          padding: EdgeInsets.all(5),
                            height: height!*0.25,
                            width: width!*0.38,
                            decoration: BoxDecoration(
                                border: Border.all(color: cnt==3?Colors.white:Colors.transparent,width: 3),
                                borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(borderRadius: BorderRadius.circular(15),
                                child: Image.asset("assets/image/Group 2 (2).jpg",
                                  height: height!*0.25,
                                  width: width!*0.38,
                                  fit: BoxFit.fill,))),
                      ),
                    ],
                  ),
                  SizedBox(height: height!*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                            Navigator.pushReplacementNamed(context,'selected',);
                          });
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
                              ),child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/image/Rectangle 2.jpg",fit: BoxFit.fill, height: height!*0.07,width: width!*0.85,)),),
                            Text('Confirm',style: TextStyle(color: Colors.white,fontSize: 20),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height!*0.02,),
                  Container(
                    height: height!*0.06,
                    child: AdWidget(
                      ad: bannerAd!,
                    ),
                  ),
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
    Navigator.pushReplacementNamed(context, 'avatar');
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
