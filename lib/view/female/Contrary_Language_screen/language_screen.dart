import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:video_call/model/ads_screen.dart';

class Language_Screen extends StatefulWidget {
  const Language_Screen({Key? key}) : super(key: key);

  @override
  State<Language_Screen> createState() => _Language_ScreenState();
}

class _Language_ScreenState extends State<Language_Screen> {
  double? height;
  double? width;
  int cnt = 0;
  bool isloading=false;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: (){
        return dialog();
      },
      child: SafeArea(
        child: Scaffold(resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          "assets/image/Group 7.jpg",
                          height: height! * 0.87,
                          width: width! * 0.90,
                          fit: BoxFit.fill,
                        ))),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: height! * 0.013,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Opacity(
                            opacity: 0.9,
                            child: SingleChildScrollView(
                              child: Container(
                                height: 720,
                                width: width! * 0.95,
                                decoration: BoxDecoration(
                                    color: Colors.purple.shade900,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Popular",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary:
                                              cnt == 0 ? Colors.purple : Colors.grey,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(20)),
                                            ),
                                            onPressed: () {
                                              interVideoAds();
                                              setState(() {
                                                isloading=true;
                                              });
                                              Timer(Duration(seconds: 7), () {
                                                setState(() {
                                                  isloading=false;
                                                });
                                                setState(() {
                                                  cnt = 0;
                                                });
                                              });
                                            },
                                            child: Row(
                                              children: [
                                                Text(
                                                  "English",
                                                  style: TextStyle(fontSize: 10),
                                                )
                                              ],
                                            )),
                                        Selecte(
                                            "Hindi",
                                            1),
                                        Selecte(
                                            "Urdu",
                                            2),
                                        Selecte(
                                            "Bengali ",
                                            3),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Selecte(
                                            "Arabic ",
                                            4),
                                        Selecte(
                                            "Spanish",
                                            5),
                                        Selecte(
                                            "Portuguese", 6),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [

                                        Selecte(
                                            " Chinese Simplified",
                                            7),
                                        Selecte(
                                            " Chinese Traditional",
                                            8),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Selecte(
                                            "Indonesian",
                                            9),
                                        Selecte(
                                            "Malay",
                                            10),
                                        Selecte(
                                            "Russian",
                                            11),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Selecte(
                                            "Gujarati ",
                                            12),
                                        Selecte(
                                            "Telugu ",
                                            13),
                                        Selecte(
                                            "Tamil", 14),
                                        Selecte(
                                            "Marathi",
                                            15),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Selecte(
                                            "Bengali",
                                            16),
                                        Selecte(
                                            "Dunish",
                                            17),
                                        Selecte(
                                            "French",
                                            18),
                                        Selecte(
                                            "German",
                                            19),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [

                                        Selecte(
                                            "Greek",
                                            20),
                                        Selecte(
                                            "Hausa",
                                            21),
                                        Selecte(
                                            "Irish",
                                            22),
                                        Selecte(
                                            "Javanese",
                                            23),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Selecte(
                                            "Japanese",
                                            24),
                                        Selecte(
                                            "Kinyarwanda",
                                            25),
                                        Selecte(
                                            "Javanese",
                                            23),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [

                                        Selecte(
                                            "israel",
                                            28),
                                        Selecte(
                                            "Latin",
                                            29),
                                        Selecte(
                                            "Luxemborgish",
                                            30),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [

                                        Selecte(
                                            "South African Xhosa",
                                            31),
                                        Selecte(
                                            "Shona",
                                            32),
                                        Selecte(
                                            "Scottish Gaelic",
                                            33),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Selecte(
                                            "new zealand",
                                            34),
                                        Selecte(
                                            "Tamil",
                                            35),
                                        Selecte(
                                            "Tatar",
                                            36),
                                        Selecte(
                                            "Tajik",
                                            37),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Selecte(
                                            "Turkmen",
                                            38),
                                        Selecte(
                                            "Ukrainian",
                                            39),
                                        Selecte(
                                            "Yiddish",
                                            40),

                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Selecte(
                                            "Welsh",
                                            41),
                                        Selecte(
                                            "Yoruba",
                                            42),
                                        Selecte(
                                            "Zulu,South Africa",
                                            43),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Selecte(
                                            "Russian",
                                            44),
                                        Selecte(
                                            "Romanian",
                                            45),
                                        Selecte(
                                            "Slovenian",
                                            46),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    isloading?Center(child:Lottie.asset("assets/video/131601-circle-load.json",width: 80,height: 80)):Container()

                  ],
                ),
              ],
            ),
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
  Widget Selecte(String text, int i) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: cnt == i ? Colors.purple : Colors.grey,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: () {
          interVideoAds();
          setState(() {
            isloading=true;
          });
          Timer(Duration(seconds: 7), () {
            setState(() {
              isloading=false;
            });
            setState(() {
              cnt = i;
            });
          });
          },
        child: Text(
          "$text",
          style: TextStyle(fontSize: 10),
        )
    );
  }
}
