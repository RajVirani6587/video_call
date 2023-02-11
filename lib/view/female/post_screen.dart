import 'package:bottom_bar_matu/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';

class Post_Screen extends StatefulWidget {
  const Post_Screen({Key? key}) : super(key: key);

  @override
  State<Post_Screen> createState() => _Post_ScreenState();
}

class _Post_ScreenState extends State<Post_Screen> {
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
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          title: Text("Post",style: TextStyle(color: Colors.pink,fontSize: 25,fontWeight: FontWeight.bold),),
        ),
        body:ListView.builder(
          itemCount:home_providerf!.i1.length,
          itemBuilder: (contest,index){
            return   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 5),
                  child: Text("For You",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                SizedBox(height: height!*0.008,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(50),
                            child: Image.asset("${home_providerf!.i1[index].Image2}",
                              fit: BoxFit.fill,
                              height:height!*0.045,
                              width: width!*0.1,
                            ),
                          ),
                           SizedBox(width: width!*0.03,),
                           Text("${home_providerf!.i1[index].Name2}"),
                        ],
                      ),
                      Container(
                        height: height!*0.03,
                        width:width!*0.14,
                        decoration: BoxDecoration(
                          color: Colors.pink.shade400,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text("⭐ Lv5",style: TextStyle(color:Colors.white,fontSize: 10),)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height!*0.015,),
                Image.asset("${home_providerf!.i1[index].post}",height:height!*0.6, width: width!*1,fit: BoxFit.fill,),
                SizedBox(height: height!*0.01,),
                Padding(
                  padding:  EdgeInsets.only(right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                                ? Icons.indeterminate_check_box
                                : Icons.indeterminate_check_box_outlined,
                            color: isLiked
                                ? Colors.purple
                                : Colors.black,
                            size: 30,
                          );
                        },
                        likeCount: 105,
                      ),
                      SizedBox(width: width!*0.04,),
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
                                ? Icons.thumb_up_alt_sharp
                                : Icons.thumb_up_off_alt_outlined,
                            color: isLiked
                                ? Colors.blue
                                : Colors.black,
                            size: 30,
                          );
                        },
                        likeCount: 400 ,
                      ),
                      SizedBox(width: width!*0.04,),
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
                                ? Colors.pink
                                : Colors.black,
                            size: 30,
                          );
                        },
                        likeCount: 192,
                      ),
                    ],
                  ),
                ),
               Container(
                 height: height!*0.001,
                 width: width!*1,
                 color: Colors.black,
               ),
              ],
            );
          },

        ) ,
      ),
    );
  }
}
