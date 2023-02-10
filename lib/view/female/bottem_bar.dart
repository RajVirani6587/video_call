import 'package:bottom_bar_matu/bottom_bar_matu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_call/view/female/tabbar_Screen.dart';

import '../../provider/home_provider.dart';
import '../details_screens/birthday_Screen.dart';
import 'contrary_screen.dart';
import 'live_screen.dart';
import 'video_screen.dart';



class Bottom_Screen extends StatefulWidget {
  const Bottom_Screen({Key? key}) : super(key: key);

  @override
  State<Bottom_Screen> createState() => _Bottom_ScreenState();
}

class _Bottom_ScreenState extends State<Bottom_Screen> {
  List WidgetsList=[Video_Screen(),Live_Screen(),ContraryTabbar_Screen(),User_Birthday(),User_Birthday(),];
  Home_Provider ? home_providert;
  Home_Provider ? home_providerf;
  @override
  Widget build(BuildContext context) {
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    home_providerf = Provider.of<Home_Provider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink,
        body:  WidgetsList[Provider.of<Home_Provider>(context,listen: true).i],
        extendBody: true,
       bottomNavigationBar:_createBottomNavigationBar(),
      ),
    );
  }
  Widget _createBottomNavigationBar() {
    return Container(
      height: MediaQuery.of(context).size.height*0.07,
      color: Colors.pink,
      child:  Stack(
        children: [
          Image.asset("assets/image/Rectangle 3 (1).jpg",width: MediaQuery.of(context).size.width*1,fit: BoxFit.fill,),
          BottomBarBubble(
            color: Colors.white,
            backgroundColor: Colors.transparent,
            height: 70,
            items: [
              BottomBarItem(
                iconData: Icons.home,
                label: 'Home',
              ),
              BottomBarItem(
                iconData: Icons.live_tv,
                label: 'Live',
              ),
              BottomBarItem(
                iconData: Icons.flag,
                label: 'contrary',
              ),
              BottomBarItem(
                iconData: Icons.chat,
                label: 'Chat',
              ),
              BottomBarItem(
                iconData: Icons.settings,
                label: 'Setting',
              ),
            ],
            selectedIndex:Provider.of<Home_Provider>(context,listen:true).i ,
            onSelect: (value) {
              Provider.of<Home_Provider>(context,listen:false).changeicon(value);
            },
          ),
        ],
      ),
    );
  }
}