import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:video_call/const/conts.dart';

import '../../model/ads_screen.dart';
class Image_Screen extends StatefulWidget {
  const Image_Screen({Key? key}) : super(key: key);

  @override
  State<Image_Screen> createState() => _Image_ScreenState();
}

class _Image_ScreenState extends State<Image_Screen> {
  double ? height;
  double ? width;
  bool isloading=false;
  File f1 = File("");
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
                    children:[
                      IconButton(onPressed: (){
                        Navigator.pushNamed(context,'nick');
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
                  Text("Upload your photo",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                  SizedBox(height: height!*0.1,),
                  InkWell(
                    onTap: (){
                      bottomsheetdilaog();
                         },
                    child: Container(
                      height: height!*0.35,
                      width: width!*0.40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white30,
                      ),
                      child: f1.path.isEmpty?Container(height: 150,width: 150,
                        decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white,width: 5),),
                        child: Icon(Icons.photo_camera_outlined,color: Colors.white,size: 70,),):CircleAvatar(backgroundImage: FileImage(f1),
                      ),
                    ),
                  ),
                  SizedBox(height: height!*0.1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          f1.path.isEmpty?
                          showDialog(
                            context: context,
                            builder: (BuildContext context){
                              return Expanded(
                                child: AlertDialog(
                                  title: Text('Red Alert',style: TextStyle(color: Colors.red),),
                                  content: Text('Please Upload a Photo'),
                                  actions: [
                                    InkWell(onTap:(){
                                      Navigator.pop(context);
                                    },
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Text("ok",style: TextStyle(fontSize: 20),),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ) : ad();
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
                ],
              ),
              isloading?Center(child: Lottie.asset("assets/video/131601-circle-load.json",width: 80,height: 80)):Container()
            ],
          )
        ),
      ),
    );
  }

  void ad(){
    interVideoAds();
    setState(() {
      isloading=true;
    });
    Timer(Duration(seconds: 3), () {
      setState(() {
        isloading=false;
      });
      Navigator.pushNamed(context,'your',);
    });
  }
  void bottomsheetdilaog(){
    showModalBottomSheet(
      backgroundColor: Colors.purple.shade600,
        context:context,
        builder:(context){
          return Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)), color: Colors.white,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(onTap: ()async{
                  ImagePicker img = ImagePicker();
                  XFile? f2 =  await img.pickImage(source: ImageSource.camera);
                  setState((){
                    f1 = File(f2!.path);
                  });
                  Navigator.pop(context);

                },child: Text("Take Photo",style: TextStyle(fontSize: 20),)),
                InkWell(onTap: ()async{
                  ImagePicker img = ImagePicker();
                  XFile? f2 =  await img.pickImage(source: ImageSource.gallery);
                  setState((){
                    f1 = File(f2!.path);
                  });
                  Navigator.pop(context);
                       },
                  child: Text("Choose From Library",style: TextStyle(fontSize: 20))),
                InkWell(onTap: (){
                  Navigator.pop(context);
                },child: Text("Cancel",style: TextStyle(fontSize: 20))),
              ],
            ),
          );
        }
    );
  }
  Future<bool> dialog() async {
    back();
    return await false;
  }

  void back() {
    Navigator.pushReplacementNamed(context, 'nick');
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
