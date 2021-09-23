
import 'package:flutter/cupertino.dart';
import 'package:navigator/model/Category.dart';
import 'package:navigator/model/Product.dart';

class FavProv extends ChangeNotifier
{
List<CategryModeL1> FavProducts=[
];
addtoFav(CategryModeL1 c){
  FavProducts.add(c);
  notifyListeners();
}
}