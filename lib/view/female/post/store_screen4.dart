import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../model/ads_screen.dart';

class Store_Screen4 extends StatefulWidget {
  const Store_Screen4({Key? key}) : super(key: key);

  @override
  State<Store_Screen4> createState() => _Store_Screen4State();
}

class _Store_Screen4State extends State<Store_Screen4> {
  double ?height;
  double ?width;
  bool isloading=false;

  @override
  Widget build(BuildContext context) {
    height= MediaQuery.of(context).size.height;
    width= MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: dialog,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    height: height!*1,
                    width: width!*1,
                    child: Image.asset("assets/post/girl-dp-image-260.jpg", height: height!*1, width: width!*1,fit: BoxFit.fill,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 3,color: Colors.pink)
                        ),
                        child: ClipRRect(borderRadius: BorderRadius.circular(50),
                          child: Image.asset("assets/post/HD-wallpaper-indian-girl-beautiful-eyes-hair-insta-lips-model-smile.jpg",
                            fit: BoxFit.fill,
                            height:height!*0.045,
                            width: width!*0.08,
                          ),
                        ),
                      ),
                      SizedBox(width: width!*0.03,),
                      Text("Riya 6635",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: height!*1,
                    width: width!*0.5,
                    color: Colors.transparent,
                    child: InkWell(onTap: (){
                      Navigator.pop(context);
                    },
                    ),
                  ),
                  Container(
                    height: height!*1,
                    width: width!*0.5,
                    color: Colors.transparent,
                    child: InkWell(onTap: (){
                      interAds();
                      setState(() {
                        isloading=true;
                      });
                      Timer(Duration(seconds: 4), () {
                        setState(() {
                          isloading=false;
                        });
                        Navigator.pushNamed(context, 'store5');
                      });
                      },
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
    Navigator.pushReplacementNamed(context, 'bottom');
  }
}
