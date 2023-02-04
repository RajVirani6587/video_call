import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:video_call/provider/home_provider.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {


  Home_Provider? home_providerT;
  Home_Provider? home_providerF;

  double ? height;
  double ? width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    home_providerF = Provider.of<Home_Provider>(context,listen: false);
    home_providerT = Provider.of<Home_Provider>(context,listen: true);
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Image.asset("assets/image/Rectangle 1.jpg",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pushNamed(context,'intro');
                      }, icon: Icon(Icons.arrow_back,size: 35,color: Colors.white,)),
                    ],
                  ),
                    SizedBox(height: height!*0.1,),
                    Text("My Gender",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                     SizedBox(height: height!*0.09,),
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
                                height: height!*0.25,
                                width: width!*0.35,
                                decoration: BoxDecoration(border:Border.all(width: 2,color: Colors.white)),
                                child:InkWell(onTap: (){
                                  home_providerF!.playpause();
                                },child: home_providerT!.isplay ?Image.asset("assets/image/Group (2).jpg",fit: BoxFit.fill,):Image.asset("assets/image/Group (1).jpg",fit: BoxFit.fill,)),
                                  //icon:Icon(topTrue!.isplay?Icons.pause_circle_outline:Icons.play_circle_fill,color: Colors.white,size: 40,)
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
                                height: height!*0.25,
                                width: width!*0.35,
                                decoration: BoxDecoration(border:Border.all(width: 2,color: Colors.white)),
                               child:InkWell(onTap: (){
                                      home_providerF!.playpause();
                                },child: home_providerT!.isplay ?Image.asset("assets/image/Group 1 (1).jpg",fit: BoxFit.fill,):Image.asset("assets/image/Group 1 (2).jpg",fit: BoxFit.fill,)),
                              ),
                          ),
                          SizedBox(height: height!*0.02,),
                          Text("Female",style: TextStyle(color: Colors.white,fontSize: 20),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height!*0.07,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, '');
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
                  Text("Can't be changed after confirmation",style: TextStyle(color: Colors.white,),)
                ],
              ),
            ],
          ),
       ),
    );
  }
}