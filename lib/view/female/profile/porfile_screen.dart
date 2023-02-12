import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../../provider/home_provider.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  double ?height;
  double ?width;
  Home_Provider? home_providerf;
  Home_Provider? home_providert;
  @override
  Widget build(BuildContext context) {
    height= MediaQuery.of(context).size.height;
    width= MediaQuery.of(context).size.width;
    home_providerf = Provider.of<Home_Provider>(context,listen: false);
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Lottie.asset("assets/video/115746-background (1).json",fit: BoxFit.fill,height: height!*1),
          Column(
            children: [
              SizedBox(height: height!*0.12,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(70),
                        child: Image.asset("assets/image/6493__user-1659503800.jpg",height: height!*0.09,
                          width: width!*0.2,fit: BoxFit.fill,)),
                     SizedBox(width: width!*0.1,),
                    Column(
                      children: [
                        Text("kaju4ec099",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                        Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(20)),
                                ),
                                onPressed: () {
                                  // Navigator.pushReplacementNamed(context,'bottom');
                                },
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/image/KNjVEZNv_400x400-removebg-preview.png",
                                        height: height! * 0.02,
                                        width: width! * 0.05,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width! * 0.01,
                                    ),
                                    Text(
                                      "India",
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                )),
                            SizedBox(width: width!*0.04,),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(20)),
                                ),
                                onPressed: () {
                                  // Navigator.pushReplacementNamed(context,'bottom');
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      "English",
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                )),

                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: height!*0.03,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context,'prochat');
                },
                child: ListTile(
                  leading: Container(
                    height: height!*0.045,
                    width: width!*0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink.shade200,
                    ),
                    child: Icon(Icons.message_sharp,color: Colors.pink,),
                  ),
                  title: Text("Messages",style: TextStyle(fontSize: 20,color: Colors.white),),
                  trailing: Wrap(
                    spacing: 10,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(color: Colors.red,shape: BoxShape.circle),
                        child: Center(child: Text("1",style:TextStyle(color: Colors.white),)),
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.white,),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context,'Post');
                },
                child: ListTile(
                  leading: Container(
                    height: height!*0.045,
                    width: width!*0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink.shade200,
                    ),
                    child: Icon(Icons.signpost_rounded,color: Colors.pink,),
                  ),
                  title: Text("New Post",style: TextStyle(fontSize: 20,color: Colors.white),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),
              ),
              ListTile(
                leading: Container(
                  height: height!*0.045,
                  width: width!*0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink.shade200,
                  ),
                  child: Icon(Icons.image,color: Colors.pink,),
                ),
                title: Text("My Avatar",style: TextStyle(fontSize: 20,color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
              ),
              ListTile(
                leading: Container(
                  height: height!*0.045,
                  width: width!*0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink.shade200,
                  ),
                  child: Icon(Icons.perm_identity,color: Colors.pink,),
                ),
                title: Text("ID",style: TextStyle(fontSize: 20,color: Colors.white),),
                trailing: Wrap(
                  spacing: 4,
                  children: [
                    SelectableText("95874251",style:TextStyle(color: Colors.white),),
                    Icon(Icons.copy,color: Colors.white,size: 15,)
                  ],
                ),
              ),
              ListTile(
                leading: Container(
                  height: height!*0.045,
                  width: width!*0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink.shade200,
                  ),
                  child: Icon(Icons.text_fields,color: Colors.pink,),
                ),
                title: Text("Nickname",style: TextStyle(fontSize: 20,color: Colors.white),),
                trailing: Wrap(
                  spacing: 10,
                  children: [
                    Text("Kaju4ec099",style:TextStyle(fontWeight: FontWeight.w600,color: Colors.white),),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ],
                ),
              ),
              ListTile(
                leading: Container(
                  height: height!*0.045,
                  width: width!*0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink.shade200,
                  ),
                  child: Icon(Icons.male_outlined,color: Colors.pink,),
                ),
                title: Text("Gender",style: TextStyle(fontSize: 20,color: Colors.white),),
                trailing: Wrap(
                  spacing: 10,
                  children: [
                    Text("Male",style:TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              ListTile(
                leading: Container(
                  height: height!*0.045,
                  width: width!*0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink.shade200,
                  ),
                  child: Icon(Icons.calendar_month_outlined,color: Colors.pink,),
                ),
                title: Text("Age",style: TextStyle(fontSize: 20,color: Colors.white),),
                trailing: Text("18+",style:TextStyle(color: Colors.white),),
              ),
              ListTile(
                leading: Container(
                  height: height!*0.045,
                  width: width!*0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink.shade200,
                  ),
                  child: Icon(Icons.language,color: Colors.pink,),
                ),
                title: Text("Region",style: TextStyle(fontSize: 20,color: Colors.white),),
                trailing: Wrap(
                  spacing: 10,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(color: Colors.red,shape: BoxShape.circle),
                      child: Center(child: Image.asset("assets/image/KNjVEZNv_400x400-removebg-preview.png")),
                    ),
                    Text("India",style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              ListTile(
                leading: Container(
                  height: height!*0.045,
                  width: width!*0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink.shade200,
                  ),
                  child: Icon(Icons.sign_language,color: Colors.pink,),
                ),
                title: Text("Language",style: TextStyle(fontSize: 20,color: Colors.white),),
                trailing: Wrap(
                  spacing: 10,
                  children: [
                    Text("English",style:TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              ListTile(
                leading: Container(
                  height: height!*0.045,
                  width: width!*0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink.shade200,
                  ),
                  child: Icon(Icons.logo_dev,color: Colors.pink,),
                ),
                title: Text("My Level",style: TextStyle(fontSize: 20,color: Colors.white),),
                trailing:Text("LV 0",style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}