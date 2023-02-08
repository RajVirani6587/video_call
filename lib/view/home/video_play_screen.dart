
  import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
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
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset(
      //'assets/video/video1.mp4'
        "${Provider.of<Home_Provider>(context, listen: false).Datapickkk?.video}"
    );
    chewieController = ChewieController(videoPlayerController: videoPlayerController!);
  }

  @override
  Widget build(BuildContext context) {
    home_providerf = Provider.of<Home_Provider>(context,listen: false);
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    color: Colors.black,
                    alignment: Alignment.center,
                    height:90.h,
                    child: InkWell(
                      onTap: () {
                        home_providerf!.playpause();
                        if (home_providerf!.isplay == false) {
                          videoPlayerController!.play();
                        } else {
                          videoPlayerController!.pause();
                        }
                      },
                      child: Chewie(
                        controller: chewieController!,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(13),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
