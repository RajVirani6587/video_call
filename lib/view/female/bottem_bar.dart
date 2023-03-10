import 'package:bottom_bar_matu/bottom_bar_matu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_call/model/ads_screen.dart';
import 'package:video_call/view/female/profile/porfile_screen.dart';
import 'package:video_call/view/female/post/post_screen.dart';
import 'package:video_call/view/female/Contrary_Language_screen/tabbar_Screen.dart';
import '../../model/sharedpref_screen.dart';
import '../../provider/home_provider.dart';
import 'home/video_screen.dart';
import 'live/live_screen.dart';



class Bottom_Screen extends StatefulWidget {
  const Bottom_Screen({Key? key}) : super(key: key);

  @override
  State<Bottom_Screen> createState() => _Bottom_ScreenState();
}

class _Bottom_ScreenState extends State<Bottom_Screen> {
  List WidgetsList=[Video_Screen(),Live_Screen(),ContraryTabbar_Screen(),Post_Screen(),Profile_Screen(),];
  Home_Provider ? home_providert;
  Home_Provider ? home_providerf;

  @override
  void initState() {
    super.initState();
    setIntro();
  }
  @override
  Widget build(BuildContext context) {
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    home_providerf = Provider.of<Home_Provider>(context,listen: false);
    return Scaffold(
    resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body:  WidgetsList[Provider.of<Home_Provider>(context,listen: true).i],
      extendBody: true,
     bottomNavigationBar:_createBottomNavigationBar(),
    );
  }
  Widget _createBottomNavigationBar() {
    return WillPopScope(
      onWillPop: ()async{
        return true;
      },
      child: Container(
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
                  label: 'Region',
                ),
                BottomBarItem(
                  iconData: Icons.broken_image_outlined,
                  label: 'post',
                ),
                BottomBarItem(
                  iconData: Icons.person,
                  label: 'Profile',
                ),
              ],
              selectedIndex:Provider.of<Home_Provider>(context,listen:true).i ,
              onSelect: (value) {
                interAds();
                Provider.of<Home_Provider>(context,listen:false).changeicon(value);
              },

            ),
          ],
        ),
      ),
    );
  }
}
