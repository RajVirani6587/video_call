import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:video_call/const/conts.dart';

import '../../model/ads_screen.dart';
import '../../provider/home_provider.dart';

class Selected_Screen extends StatefulWidget {
  const Selected_Screen({Key? key}) : super(key: key);

  @override
  State<Selected_Screen> createState() => _Selected_ScreenState();
}

class _Selected_ScreenState extends State<Selected_Screen> {
  Home_Provider? home_providerT;
  Home_Provider? home_providerF;
  bool isloading=false;
  double ? height;
  double ? width;
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
                        Navigator.pushNamed(context,'your');
                      },
                          icon: Icon(Icons.arrow_back,size: 35,color: Colors.white,)),
                    ],
                  ),
                  SizedBox(height: height!*0.05,),

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
                  SizedBox(height: height!*0.1,),
                  Text("Selected Gender In Video Call",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),),
                  SizedBox(height: height!*0.1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Neumorphic(
                            style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                              depth: 4,
                              lightSource: LightSource.topLeft,
                              color: Colors.white60,
                            ),
                            child: Container(
                              height: height!*0.20,
                              width: width!*0.35,
                              decoration: BoxDecoration(border:Border.all(width: 2,color: Colors.white)),
                              child:InkWell(onTap: (){

                                interVideoAds();
                                setState(() {
                                  isloading=true;
                                });
                                Timer(Duration(seconds: 7), () {
                                  setState(() {
                                    isloading=false;
                                  });
                                  Navigator.pushReplacementNamed(context,'bottom',);
                                });

                              },child: Image.asset("assets/image/Group (1).jpg",fit: BoxFit.fill,)),
                            ),
                          ),
                          SizedBox(height: height!*0.02,),
                          Text("Male",style: TextStyle(color: Colors.white,fontSize: 20),),
                        ],
                      ),
                      Column(
                        children: [
                          Neumorphic(
                            style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                              depth: 4,
                              lightSource: LightSource.topLeft,
                              color: Colors.white60,
                            ),
                            child: Container(
                              height: height!*0.20,
                              width: width!*0.35,
                              decoration: BoxDecoration(border:Border.all(width: 2,color: Colors.white)),
                              child:InkWell(onTap: (){
                                interVideoAds();
                                setState(() {
                                  isloading=true;
                                });
                                Timer(Duration(seconds: 7), () {
                                  setState(() {
                                    isloading=false;
                                  });
                                  Navigator.pushReplacementNamed(context,'bottom',);
                                });},
                                  child: Image.asset("assets/image/Group 1 (1).jpg",fit: BoxFit.fill,)),
                            ),
                          ),
                          SizedBox(height: height!*0.02,),
                          Text("Female",style: TextStyle(color: Colors.white,fontSize: 20),),
                        ],
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
              isloading?Center(child:Lottie.asset("assets/video/131601-circle-load.json",width: 80,height: 80)):Container(),

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
    Navigator.pushReplacementNamed(context, 'your');
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
