import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../../../model/ads_screen.dart';
import '../../../model/video_model.dart';
import '../../../provider/home_provider.dart';

class Live_Screen extends StatefulWidget {
  const Live_Screen({Key? key}) : super(key: key);

  @override
  State<Live_Screen> createState() => _Live_ScreenState();
}

class _Live_ScreenState extends State<Live_Screen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    forvideo();
  }

  Home_Provider? home_providerf;
  Home_Provider? home_providert;
  bool isloading=false;

  @override
  Widget build(BuildContext context) {
    home_providerf = Provider.of<Home_Provider>(context, listen: false);
    home_providert = Provider.of<Home_Provider>(context, listen: true);
    return WillPopScope(
      onWillPop: dialog,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: home_providerf!.i1.length,
                onPageChanged: (value) {
                    interAds();
                    setState(() {
                      isloading=true;
                    });
                    Timer(Duration(seconds: 3), () {
                      setState(() {
                        isloading=false;
                      });
                      forvideo();
                    });
                },
                itemBuilder: (Contest, index) {
                  return Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 1,
                            width: MediaQuery.of(context).size.width * 1,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: _controller.value.isInitialized
                                    ? AspectRatio(
                                        aspectRatio: _controller.value.aspectRatio,
                                        child: VideoPlayer(_controller))
                                    : Center(
                                        child: const CircularProgressIndicator(
                                        color: Colors.green,
                                      ))),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onPressed: () {
                                  Navigator.pushReplacementNamed(context, 'bottom');
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "Live",
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.55,
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 5),
                                        child: LikeButton(
                                          size: 40,
                                          circleColor: CircleColor(
                                              start: Colors.pinkAccent,
                                              end: Colors.redAccent),
                                          bubblesColor: BubblesColor(
                                            dotPrimaryColor: Color(0xff33b5e5),
                                            dotSecondaryColor: Color(0xff0099cc),
                                          ),
                                          likeBuilder: (bool isLiked) {
                                            return Icon(
                                              isLiked
                                                  ? Icons.favorite
                                                  : Icons.favorite_border,
                                              color: isLiked
                                                  ? Colors.red
                                                  : Colors.white,
                                              size: 40,
                                            );
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 6),
                                        child: IconButton(
                                            onPressed: () {
                                              interVideoAds();
                                              setState(() {
                                                isloading=true;
                                              });
                                              Timer(Duration(seconds: 3), () {
                                                setState(() {
                                                  isloading=false;
                                                });
                                                home_providerf!.Datapickkk = Modeldata2(
                                                  Name2: home_providerf!.i1[index].Name2,
                                                  Image2: home_providerf!.i1[index].Image2,
                                                );
                                                Navigator.pushNamed(context, 'chat');
                                              });

                                            },
                                            icon: Icon(
                                              Icons.chat,
                                              color: Colors.white,
                                              size: 33,
                                            )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: 13, right: 13, left: 13),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(50),
                                          child: Image.asset(
                                            "${home_providerf!.i1[index].Image2}",
                                            fit: BoxFit.fill,
                                            width:
                                                MediaQuery.of(context).size.width *
                                                    0.1,
                                            height:
                                                MediaQuery.of(context).size.height *
                                                    0.045,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8),
                                        child: Text(
                                          "${home_providerf!.i1[index].Name2}",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 20),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 8, right: 8, left: 8),
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width * 0.1,
                                      height: MediaQuery.of(context).size.height *
                                          0.045,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.white, width: 3)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/image/KNjVEZNv_400x400-removebg-preview.png",
                                          width: MediaQuery.of(context).size.width *
                                              0.1,
                                          height:
                                              MediaQuery.of(context).size.height *
                                                  0.045,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
              isloading?Center(child: Lottie.asset("assets/video/131601-circle-load.json",width: 80,height: 80)):Container()
            ],
          ),
        ),
      ),
    );
  }

  void forvideo() {
    Random random = new Random();
    int rnd = random.nextInt(Provider.of<Home_Provider>(context,listen: false).i1.length);
    _controller = VideoPlayerController.asset(
        "${Provider.of<Home_Provider>(context, listen: false).i1[rnd].real}")
      ..initialize().then((value) {
        setState(() {
          _controller.setLooping(true);
          _controller.play();
        });
      });
  }

  Future<bool> dialog() async {
    home_providerf!.playpause();
    _controller.pause();
    back();
    return await false;
  }

  void back() {
    Navigator.pushReplacementNamed(context, 'bottom');
  }
  @override
  void dispose() {
    super.dispose();
    dialog();
  }
}
