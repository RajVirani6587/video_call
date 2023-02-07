import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:image_picker/image_picker.dart';

class Image_Screen extends StatefulWidget {
  const Image_Screen({Key? key}) : super(key: key);

  @override
  State<Image_Screen> createState() => _Image_ScreenState();
}

class _Image_ScreenState extends State<Image_Screen> {
  double ? height;
  double ? width;
  File f1 = File("");

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
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
                      Navigator.pushNamed(context,'nick');
                    }, icon: Icon(Icons.arrow_back,size: 35,color: Colors.white,)),
                  ],
                ),
                SizedBox(height: height!*0.1,),
                Text("My Avatar",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                SizedBox(height: height!*0.13,),
                InkWell(
                  onTap: ()async{
                    ImagePicker img = ImagePicker();
                    XFile? f2 =  await img.pickImage(source: ImageSource.gallery);
                    setState((){
                      f1 = File(f2!.path);
                    });
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white30,
                    ),
                    child: CircleAvatar(
                      backgroundImage: FileImage(f1),
                    ),
                  ),
                ),
                SizedBox(height: height!*0.13,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context,'');
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
              ],
            ),
          ],
        )
      ),
    );
  }
}
