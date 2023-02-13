import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:video_call/model/nikename_model.dart';

import '../../model/sharedpref_screen.dart';

class Nickname_Screen extends StatefulWidget {
  const Nickname_Screen({Key? key}) : super(key: key);

  @override
  State<Nickname_Screen> createState() => _Nickname_ScreenState();
}

class _Nickname_ScreenState extends State<Nickname_Screen> {
  TextEditingController txtnickname = TextEditingController();
  var txtkey = GlobalKey<FormState>();
  double ? height;
  double ? width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Form(
      key: txtkey,
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
                        Navigator.pushNamed(context,'birth');
                      }, icon: Icon(Icons.arrow_back,size: 35,color: Colors.white,)),
                    ],
                  ),
                  SizedBox(height: height!*0.1,),
                  Text("My Nickname",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                  SizedBox(height: height!*0.05,),
                   Padding(
                     padding:  EdgeInsets.symmetric(horizontal: 25),
                     child: TextFormField(
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                       style:TextStyle(color: Colors.white),
                       validator: (value){
                         return value!.length < 2?'Name must be greater than two characters':null;
                       },
                       controller: txtnickname,
                       decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                            borderSide:  BorderSide(color: Colors.white12),
                           borderRadius: BorderRadius.circular(30.0),
                         ),
                         fillColor: Colors.white12,
                         filled: true,
                         label: Text("Nickname",style: TextStyle(color: Colors.white),),
                       ),
                     ),
                   ),
                  SizedBox(height: height!*0.08,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          InkWell(
                            onTap: ()async{
                              if(txtkey.currentState!.validate() == true){
                                String iname = txtnickname.text;
                                  setSHR(iname, true);
                                  Navigator.pushReplacementNamed(context, 'avatar');
                              }
                            },
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
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
                  SizedBox(height: height!*0.05,),
                  InkWell(onTap: (){
                    nikename n1 =nikename(
                      'user45872@'
                    );
                    Navigator.pushNamed(context,'avatar',arguments: n1);
                  },child: Text("Skip",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
