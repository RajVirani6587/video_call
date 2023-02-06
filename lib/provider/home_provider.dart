import 'package:flutter/material.dart';

class Home_Provider extends ChangeNotifier{

  bool isplay = false;

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
}