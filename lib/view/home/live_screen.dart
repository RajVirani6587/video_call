import 'dart:math';

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../../provider/home_provider.dart';

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
  @override
  Widget build(BuildContext context) {
    home_providerf = Provider.of<Home_Provider>(context,listen: false);
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: home_providerf!.i1.length,onPageChanged: (value) {
                forvideo();

            },
            itemBuilder: (Contest,index){
              return Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*1,
                        width: MediaQuery.of(context).size.width*1,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(0),
                            child: _controller.value.isInitialized
                                ?
                            AspectRatio(
                                aspectRatio: _controller.value.aspectRatio,
                                child: VideoPlayer(_controller)) :
                            Center(child: const CircularProgressIndicator(color: Colors.green,))
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                       Row(
                         children: [
                           IconButton(icon:Icon(Icons.arrow_back,color: Colors.white,size: 30,),onPressed: (){
                               Navigator.pushReplacementNamed(context,'bottom');
                             },
                           ),
                           Padding(
                             padding: EdgeInsets.symmetric(horizontal: 10),
                             child: Text("Live",style: TextStyle(color: Colors.white,fontSize: 20),),
                           ),
                         ],
                       ),
                      SizedBox(height: MediaQuery.of(context).size.height*0.58,),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  LikeButton(
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
                                  SizedBox(height: MediaQuery.of(context).size.height*0.025,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Image.asset("assets/image/Vector.png",height: MediaQuery.of(context).size.height*0.04,width: MediaQuery.of(context).size.width*0.09,fit: BoxFit.fill,),
                                  ),],
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
                                    padding:  EdgeInsets.all(13.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset("${home_providerf!.i1[index].Image2}",
                                        fit: BoxFit.fill,
                                        width: MediaQuery.of(context).size.width*0.1,
                                        height: MediaQuery.of(context).size.height*0.045,
                                      ),
                                    ),
                                  ),
                                  Text("${home_providerf!.i1[index].Name2}",style: TextStyle(color: Colors.white,fontSize: 20),),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8,right: 8,left: 8),
                                child: Container(
                                  width: MediaQuery.of(context).size.width*0.1,
                                  height: MediaQuery.of(context).size.height*0.045,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white,width: 3)
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/image/KNjVEZNv_400x400-removebg-preview.png",
                                      width: MediaQuery.of(context).size.width*0.1,
                                      height: MediaQuery.of(context).size.height*0.045,
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
      ),
    );
  }

  void forvideo() {
    Random random = new Random();
    int rnd = random.nextInt(9);
    _controller = VideoPlayerController.asset("${Provider.of<Home_Provider>(context,listen: false).i1[rnd].real}")
      ..initialize().then((value) {
        setState(() {
          _controller.setLooping(true);
          _controller.play();
        });
      });
  }
}