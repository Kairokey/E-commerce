import 'package:flutter/cupertino.dart';
import 'package:navigator/model/Product.dart';

class CartProvider extends ChangeNotifier
{
List<CategryModeL1> cartProducts=[];
addToCart(CategryModeL1){
  cartProducts.add(CategryModeL1);
  notifyListeners();
}
removeFromCart(CategryModeL1){
  cartProducts.remove(CategryModeL1);
  notifyListeners();

}
}