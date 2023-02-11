import 'package:flutter/material.dart';

class Contrary_Screen extends StatefulWidget {
  const Contrary_Screen({Key? key}) : super(key: key);

  @override
  State<Contrary_Screen> createState() => _Contrary_ScreenState();
}

class _Contrary_ScreenState extends State<Contrary_Screen> {
  double? height;
  double? width;
  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
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
                      height: height! * 0.87,
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
                                  //style: MaterialStateProperty.all<RoundedRectangleBorder>(B),
                                  onPressed: () {
                                    setState(() {
                                      cnt = 0;
                                    });
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
                              Selecte(
                                  "assets/centrary/flag-button-illustration-pakistan-260nw-134692763_1-removebg-preview.png",
                                  "Pakistan",
                                  1),
                              Selecte(
                                  "assets/centrary/badge_button_bangladesh_flag_800_wht-removebg-preview.png",
                                  "Bangladesh",
                                  2),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Selecte(
                                  "assets/centrary/download-removebg-preview.png",
                                  "Afghanistan ",
                                  3),
                              Selecte(
                                  "assets/centrary/png-clipart-flag-of-angola-national-flag-flags-of-the-world-portuguese-flag-miscellaneous-flag-removebg-preview.png",
                                  "Angola ",
                                  4),
                              Selecte(
                                  "assets/centrary/aruba-button-flag-round-shape-4214348-removebg-preview.png",
                                  "Aruba",
                                  5),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Selecte("assets/centrary/download (3).jpeg",
                                  "vietnam", 6),
                              Selecte(
                                  "assets/centrary/download__5_-removebg-preview.png",
                                  "egypt",
                                  7),
                              Selecte(
                                  "assets/centrary/download__6_-removebg-preview.png",
                                  "saudi arabia ",
                                  8),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Selecte(
                                  "assets/centrary/download__7_-removebg-preview.png",
                                  "United Arab Emirates",
                                  9),
                              Selecte(
                                  "assets/centrary/download__8_-removebg-preview.png",
                                  "syria",
                                  10),
                              Selecte(
                                  "assets/centrary/download__9_-removebg-preview.png",
                                  "turkey",
                                  11),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Selecte(
                                  "assets/centrary/download__10_-removebg-preview.png",
                                  "colombia ",
                                  12),
                              Selecte(
                                  "assets/centrary/download__11_-removebg-preview.png",
                                  "venezuela ",
                                  13),
                              Selecte("assets/centrary/Brazil-icon.png",
                                  "Brazil", 14),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Selecte(
                                  "assets/centrary/istockphoto-495616284-612x612-removebg-preview.png",
                                  "nigeria",
                                  15),
                              Selecte(
                                  "assets/centrary/download__12_-removebg-preview.png",
                                  "madagascar  ",
                                  16),
                              Selecte(
                                  "assets/centrary/download__13_-removebg-preview.png",
                                  "ukraine ",
                                  17),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Selecte(
                                  "assets/centrary/png-clipart-circle-red-font-bahr.png",
                                  "bahrain",
                                  18),
                              Selecte(
                                  "assets/centrary/download__14_-removebg-preview.png",
                                  "taiwan",
                                  19),
                              Selecte(
                                  "assets/centrary/download__15_-removebg-preview.png",
                                  "Belize",
                                  20),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Selecte(
                                  "assets/centrary/download__16_-removebg-preview.png",
                                  "bosnia-and-herzegovina",
                                  21),
                              Selecte(
                                  "assets/centrary/download__17_-removebg-preview.png",
                                  "canada",
                                  22),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Selecte(
                                  "assets/centrary/denmark-flag-vector-round-icon-denmark-flag-vector-round-icon-illustration-101721065-removebg-preview.png",
                                  "denmark",
                                  23),
                              Selecte(
                                  "assets/centrary/download__18_-removebg-preview.png",
                                  "finland",
                                  24),
                              Selecte(
                                  "assets/centrary/b93ef0c2a44439ce69367d5b35eeec37-removebg-preview.png",
                                  "france",
                                  25),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Selecte(
                                  "assets/centrary/download__19_-removebg-preview.png",
                                  "hong kong",
                                  26),
                              Selecte(
                                  "assets/centrary/download__20_-removebg-preview.png",
                                  "iran",
                                  27),
                              Selecte(
                                  "assets/centrary/download__2_-removebg-preview (1).png",
                                  "israel",
                                  28),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Selecte(
                                  "assets/centrary/download__21_-removebg-preview.png",
                                  "jordan",
                                  29),
                              Selecte(
                                  "assets/centrary/download__22_-removebg-preview.png",
                                  "japan",
                                  30),
                              Selecte(
                                  "assets/centrary/download__23_-removebg-preview.png",
                                  "kuwait",
                                  31),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Selecte(
                                  "assets/centrary/download__24_-removebg-preview.png",
                                  "mexico",
                                  32),
                              Selecte(
                                  "assets/centrary/download__25_-removebg-preview.png",
                                  "nepal",
                                  33),
                              Selecte(
                                  "assets/centrary/download__26_-removebg-preview.png",
                                  "new zealand",
                                  34),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Selecte(
                                  "assets/centrary/download__27_-removebg-preview.png",
                                  "norway",
                                  35),
                              Selecte(
                                  "assets/centrary/download__3_-removebg-preview.png",
                                  "oman",
                                  36),
                              Selecte(
                                  "assets/centrary/download__28_-removebg-preview.png",
                                  "portugal",
                                  37),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Selecte(
                                  "assets/centrary/download__29_-removebg-preview.png",
                                  "qatar",
                                  38),
                              Selecte(
                                  "assets/centrary/download__30_-removebg-preview.png",
                                  "russia",
                                  39),
                              Selecte(
                                  "assets/centrary/download__4_-removebg-preview (1).png",
                                  "usa",
                                  40),
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
        ],
      ),
    );
  }

  Widget Selecte(String image, String text, int i) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: cnt == i ? Colors.purple : Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: () {
          setState(() {
            cnt = i;
          });
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "$image",
                height: height! * 0.02,
                width: width! * 0.05,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: width! * 0.01,
            ),
            Text(
              "$text",
              style: TextStyle(fontSize: 10),
            ),
          ],
        ));
  }
}
