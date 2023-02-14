import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../model/ads_screen.dart';

class Store_Screen3 extends StatefulWidget {
  const Store_Screen3({Key? key}) : super(key: key);

  @override
  State<Store_Screen3> createState() => _Store_Screen3State();
}

class _Store_Screen3State extends State<Store_Screen3> {
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
                    child: Image.asset("assets/post/d0d6eb27e479fc72acc48f67df6df3a8.jpg", height: height!*1, width: width!*1,fit: BoxFit.fill,),
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
                          child: Image.asset("assets/post/girl-dp-image-260.jpg",
                            fit: BoxFit.fill,
                            height:height!*0.045,
                            width: width!*0.08,
                          ),
                        ),
                      ),
                      SizedBox(width: width!*0.03,),
                      Text("Fly",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
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
                        Navigator.pushNamed(context, 'store4');
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
