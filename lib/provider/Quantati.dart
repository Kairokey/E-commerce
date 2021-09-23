import 'package:flutter/cupertino.dart';
class Quantity extends ChangeNotifier
{
int q=0;
  addQuantity()
{
    q++;
    notifyListeners();
}
supQuantity()
{
  q>0?q--:null;
    notifyListeners();
}
}