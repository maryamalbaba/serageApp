import 'package:flutter/material.dart';

class ThemePageProvider with ChangeNotifier{

  bool _isLighEnable=false;
    bool get isLighEnable => _isLighEnable;

  set isLighEnable(bool value) {
    _isLighEnable = value;
  }

ChangeMode(){
if((DateTime.now().minute>=49)&&(DateTime.now().minute<=53)){
  isLighEnable=false;
  print("yes");
  notifyListeners();
}
else{
  isLighEnable=true;
  notifyListeners();
}
}
}