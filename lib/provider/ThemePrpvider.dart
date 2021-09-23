

 import 'package:flutter/cupertino.dart';

class ThemeProv extends ChangeNotifier
 {
   bool isDark=false;
   ChangeTheme(){
     isDark=!isDark;
   notifyListeners();
   }

 }