import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:video_call/provider/home_provider.dart';

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
  @override
  Widget build(BuildContext context) {
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    home_providerf = Provider.of<Home_Provider>(context,listen: false);

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child
          : Scaffold(
        body: Stack(
          children: [
            Image.asset("assets/image/Rectangle 1.jpg",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pushNamed(context,'nick');
                    }, icon: Icon(Icons.arrow_back,size: 35,color: Colors.white,)),
                  ],
                ),
                SizedBox(height: height!*0.01,),
                Text("Your Goal",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                SizedBox(height: height!*0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(onTap: () {
                      setState(() {
                        cnt=0;
                      });
                    },
                      child: Container(
                          padding: EdgeInsets.all(5),
                          height: height!*0.3,
                          width: width!*0.4,
                          decoration: BoxDecoration(
                              border: Border.all(color: cnt==0?Colors.white:Colors.transparent,width: 3),
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(borderRadius: BorderRadius.circular(15),
                              child: Image.asset("assets/image/Group 5.png",
                                height: height!*0.3,
                                width: width!*0.4,
                                fit: BoxFit.fill,))),
                    ),
                    InkWell(onTap: () {
                      setState(() {
                        cnt=1;
                      });
                    },
                      child: Container(
                          padding: EdgeInsets.all(5),
                          height: height!*0.3,
                          width: width!*0.4,
                          decoration: BoxDecoration(
                              border: Border.all(color: cnt==1?Colors.white:Colors.transparent,width: 3),
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(borderRadius: BorderRadius.circular(15),
                              child: Image.asset("assets/image/Group 4.png",
                                height: height!*0.3,
                                width: width!*0.4,
                                fit: BoxFit.fill,))),
                    ),
                  ],
                ),
                SizedBox(height: height!*0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(onTap: () {
                      setState(() {
                        cnt=2;
                      });
                    },
                      child: Container(
                        padding: EdgeInsets.all(5),
                          height: height!*0.3,
                          width: width!*0.4,
                          decoration: BoxDecoration(
                              border: Border.all(color: cnt==2?Colors.white:Colors.transparent,width: 3),
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(borderRadius: BorderRadius.circular(15),
                              child: Image.asset("assets/image/Group 3.png",
                                height: height!*0.3,
                                width: width!*0.4,
                                fit: BoxFit.fill,))),
                    ),
                    InkWell(onTap: () {
                      setState(() {
                        cnt=3;
                      });
                    },
                      child: Container(
                        padding: EdgeInsets.all(5),
                          height: height!*0.3,
                          width: width!*0.4,
                          decoration: BoxDecoration(
                              border: Border.all(color: cnt==3?Colors.white:Colors.transparent,width: 3),
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(borderRadius: BorderRadius.circular(15),
                              child: Image.asset("assets/image/Group 2 (2).jpg",
                                height: height!*0.3,
                                width: width!*0.4,
                                fit: BoxFit.fill,))),
                    ),
                  ],
                ),
                SizedBox(height: height!*0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                               Navigator.pushNamed(context,'bottom');
                           },
                          child:Neumorphic(
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
