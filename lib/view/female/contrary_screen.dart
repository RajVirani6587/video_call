import 'package:flutter/material.dart';

class Contrary_Screen extends StatefulWidget {
  const Contrary_Screen({Key? key}) : super(key: key);

  @override
  State<Contrary_Screen> createState() => _Contrary_ScreenState();
}

class _Contrary_ScreenState extends State<Contrary_Screen> {
  double ? height;
  double ? width;
  @override
  Widget build(BuildContext context) {
    height= MediaQuery.of(context).size.height;
    width= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Center(child: ClipRRect(borderRadius: BorderRadius.circular(30),
              child: Image.asset("assets/image/Group 7.jpg",
                height: height!*0.87,
                width: width!*0.90,
                fit: BoxFit.fill,))),
          Column(
            children: [
              SizedBox(height: height!*0.013,),
              Align(
                alignment: Alignment.center,
                child: Opacity(
                  opacity: 0.9,
                  child: Container(
                    height: height!*0.87,
                     width:  width!*0.90,
                    decoration: BoxDecoration(color: Colors.purple,
                      borderRadius: BorderRadius.circular(20)),
                     child: Column(
                          children: [
                              Row(
                                children: [
                                   Container(
                                      height: height!*0.05,
                                      width: width!*0.3,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                        borderRadius: BorderRadius.circular(25),
                                     ),
                                    ),
                                  ],
                                ),
                             ],
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
}
