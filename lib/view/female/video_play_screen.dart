

import 'dart:io';

import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../../provider/home_provider.dart';



class Second_Screen extends StatefulWidget {
  const Second_Screen({Key? key}) : super(key: key);

  @override
  State<Second_Screen> createState() => _Second_ScreenState();
}

class _Second_ScreenState extends State<Second_Screen> {
  Home_Provider? home_providerf;
  Home_Provider? home_providert;
 // VideoPlayerController? videoPlayerController;
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/video/video1.mp4")
      ..initialize().then((value) {
        setState(() {
          _controller.setLooping(true);
          _controller.play();
        });
      });
  }
  File? _capturedImage;
  @override
  Widget build(BuildContext context) {
    home_providerf = Provider.of<Home_Provider>(context,listen: false);
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    return WillPopScope(
      onWillPop:dialog,
      child: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.black,
            body: Builder(builder: (context){
              if (_capturedImage != null) {
                return Center(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.file(_capturedImage!),
                    ],
                  ),
                );
              }
               return  Stack(
                 alignment: Alignment.bottomRight,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*1,
                        width: MediaQuery.of(context).size.width*0.99,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: _controller.value.isInitialized
                                ?
                            AspectRatio(
                                aspectRatio: _controller.value.aspectRatio,
                                child: VideoPlayer(_controller))
                                :
                            Center(child: const CircularProgressIndicator(color: Colors.green,))
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.27,
                      width: MediaQuery.of(context).size.width*0.35,
                      child: SmartFaceCamera(
                        //  autoCapture: true,
                        defaultCameraLens: CameraLens.front,
                        onCapture: (File? image) {
                          _capturedImage = image;
                        },
                      ),
                    ),
                  ),
                ],
              );
            }),
            floatingActionButton: Padding(
              padding:  EdgeInsets.only(bottom: 5),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width*0.15,
                  height: MediaQuery.of(context).size.height*0.15,
                  child: FloatingActionButton(
                    onPressed: (){
                      dialog();
                    },
                    child: Icon(Icons.call,size: 40,),
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
            ),
          ),
      ),
    );
  }
  Future<bool> dialog() async {
    home_providerf!.playpause();
    _controller.pause();
    back();
    return await false;
  }

  void back(){
    Navigator.pushReplacementNamed(context, 'bottom');
  }
}
