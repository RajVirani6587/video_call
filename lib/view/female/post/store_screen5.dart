import 'package:flutter/material.dart';

class Store_Screen5 extends StatefulWidget {
  const Store_Screen5({Key? key}) : super(key: key);

  @override
  State<Store_Screen5> createState() => _Store_Screen5State();
}

class _Store_Screen5State extends State<Store_Screen5> {
  double ?height;
  double ?width;
  @override
  Widget build(BuildContext context) {
    height= MediaQuery.of(context).size.height;
    width= MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  height: height!*1,
                  width: width!*1,
                  child: Image.asset("assets/post/HD-wallpaper-indian-girl-beautiful-eyes-hair-insta-lips-model-smile.jpg", height: height!*1, width: width!*1,fit: BoxFit.fill,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3,color: Colors.pink)
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(50),
                        child: Image.asset("assets/post/l1nhy8en3fwzxwvsz860qoi5y93qft5d.jpg",
                          fit: BoxFit.fill,
                          height:height!*0.045,
                          width: width!*0.08,
                        ),
                      ),
                    ),
                    SizedBox(width: width!*0.03,),
                    Text("sTella",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: height!*1,
                  width: width!*0.5,
                  color: Colors.transparent,
                  child: InkWell(onTap: (){
                    Navigator.pop(context);
                  },
                  ),
                ),
                Container(
                  height: height!*1,
                  width: width!*0.5,
                  color: Colors.transparent,
                  child: InkWell(onTap: (){
                    Navigator.pushNamed(context,'store6');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}