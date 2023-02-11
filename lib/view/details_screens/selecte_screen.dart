import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';

class Selected_Screen extends StatefulWidget {
  const Selected_Screen({Key? key}) : super(key: key);

  @override
  State<Selected_Screen> createState() => _Selected_ScreenState();
}

class _Selected_ScreenState extends State<Selected_Screen> {
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
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Image.asset("assets/image/Rectangle 1.jpg",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pushNamed(context,'home');
                    },
                        icon: Icon(Icons.arrow_back,size: 35,color: Colors.white,)),
                  ],
                ),
                SizedBox(height: height!*0.1,),
                Text("Selected Gender In Video Call",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),),
                SizedBox(height: height!*0.2,),
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
                              Navigator.pushReplacementNamed(context,'');
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
                              Navigator.pushReplacementNamed(context,'bottom');
                            },child: Image.asset("assets/image/Group 1 (1).jpg",fit: BoxFit.fill,)),
                          ),
                        ),
                        SizedBox(height: height!*0.02,),
                        Text("Female",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
