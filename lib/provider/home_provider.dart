import 'package:flutter/material.dart';

class Home_Provider extends ChangeNotifier{

  bool isplay = false;

  void playpause()
  {
    isplay=!isplay;
    notifyListeners();
  }
}