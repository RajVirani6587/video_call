import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class your_Screen extends StatefulWidget {
  const your_Screen({Key? key}) : super(key: key);

  @override
  State<your_Screen> createState() => _your_ScreenState();
}

class _your_ScreenState extends State<your_Screen> {
  double ? height;
  double ? width;
  @override
  Widget build(BuildContext context) {
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
                    Image.asset("assets/image/Group 5 (1).jpg",height: height!*0.3,width: width!*0.4,fit: BoxFit.fill,),
                    Image.asset("assets/image/Group 4 (1).jpg",height: height!*0.3,width: width!*0.4,fit: BoxFit.fill,),
                  ],
                ),
                SizedBox(height: height!*0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: height!*0.3,width: width!*0.4,decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 0),borderRadius: BorderRadius.circular(20)),child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/image/Group 3 (1).jpg",height: height!*0.3,width: width!*0.4,fit: BoxFit.fill,))),
                    ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/image/Group 2 (1).jpg",height: height!*0.3,width: width!*0.4,fit: BoxFit.fill,)),
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
                          //   //f1.path.isEmpty?
                          //   showDialog(
                          //     context: context,
                          //     builder: (BuildContext context) {
                          //       return Expanded(
                          //         child: AlertDialog(
                          //           title: Text('Red Alert',style: TextStyle(color: Colors.red),),
                          //           content: Text('Please Upload a Photo'),
                          //           actions: [
                          //             InkWell(onTap:(){
                          //               Navigator.pop(context);
                          //             },
                          //               child: Padding(
                          //                 padding: EdgeInsets.all(8.0),
                          //                 child: Container(
                          //                   child: Text("ok",style: TextStyle(fontSize: 20),),
                          //                 ),
                          //               ),
                          //             ),
                          //           ],
                          //         ),
                          //       );
                          //     },
                          //   ) :Navigator.pushNamed(context,'your');
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
