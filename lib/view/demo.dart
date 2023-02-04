import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class Demo_Screen extends StatefulWidget {
  const Demo_Screen({Key? key}) : super(key: key);

  @override
  State<Demo_Screen> createState() => _Demo_ScreenState();
}

class _Demo_ScreenState extends State<Demo_Screen> {
  Home_Provider? home_providerT;
  Home_Provider? home_providerF;
  @override
  Widget build(BuildContext context) {
    home_providerF = Provider.of<Home_Provider>(context,listen: false);
    home_providerT = Provider.of<Home_Provider>(context,listen: true);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child:IconButton(icon: Icon(home_providerT!.isplay?Icons.pause_circle_outline:Icons.play_circle_fill,color: Colors.white,size: 40,),onPressed: (){
              home_providerF!.playpause();
            }),
          ),
        ));
  }
}
