import 'package:flutter/material.dart';

import '../model/video_model.dart';

class Home_Provider extends ChangeNotifier{

  bool isplay = false ;
  int con =0;

  int i=0;

  void changeicon(int index){
    i = index;
    notifyListeners();
  }

   void image(int i)
   {
     con = i;
     notifyListeners();
   }

  void playpause()
  {
    isplay=!isplay;
    notifyListeners();
  }

  var date =DateTime.now();
  var t1 = TimeOfDay.now();

  void getdata(dynamic data_1) {
    date = data_1;
    notifyListeners();
  }

  void setdata(dynamic set_2){
    t1 = set_2;
    notifyListeners();
  }

  List<Modeldata2>i1 = [
    Modeldata2(real: "assets/video/video1.mp4",video:"assets/video/video1.mp4",Image2: "assets/image/3a08310162e457cf99f93cb930c560b2.jpg",Name2:"hoy neha",),
    Modeldata2(real: "assets/video/nature.mp4",video:"assets/video/video1.mp4",Image2: "assets/image/8an9xwf43m4z1e1450cg41bffn2sh1p8.jpg",Name2:"misty"),
    Modeldata2(real: "assets/video/tt.mp4",video:"assets/video/video1.mp4",Image2: "assets/image/57g2xvv02tj55setg96fk6rzbg1q2b1h.jpg",Name2: "sTella"),
    Modeldata2(real: "assets/video/nature.mp4",video:"assets/video/video1.mp4",Image2: "assets/image/6493__user-1659503800.jpg", Name2: "Riya 6635"),
    Modeldata2(real: "assets/video/video1.mp4",video:"assets/video/video1.mp4",Image2: "assets/image/GcMA3gIlhkhj8w8g47yw8zWVgJC18YwU4Ai_eWoWmjgftIpCg8Dx2hCMnLGQ1MdOYw.jpg",  Name2: "Fly"),
    Modeldata2(real: "assets/video/tt.mp4",video:"assets/video/video1.mp4",Image2: "assets/image/images.jpg",Name2: "Sonia"),
    Modeldata2(real: "assets/video/video1.mp4",video:"assets/video/video1.mp4",Image2: "assets/image/images (1).jpg",Name2: "vanshu"),
    Modeldata2(real: "assets/video/nature.mp4",video:"assets/video/video1.mp4",Image2: "assets/image/images (2).jpg" ,Name2:"isshhhh"),
    Modeldata2(real: "assets/video/tt.mp4",video:"assets/video/video1.mp4",Image2: "assets/image/mumbai-friendship-friends-tarqcubbn4ids4uy3vcc31sxpjntetc2.jpg",Name2: "angel7303"),
    Modeldata2(real: "assets/video/nature.mp4",video:"assets/video/video1.mp4",Image2: "assets/image/sonipat-call-girls-hyderabad-call-girls-ebg2m3orn3ba1sajgl8ae1lgheewblni.jpg",Name2: "Rossy rose"),
  ];
  List data2 = [];
  Modeldata2?Datapickkk;

}