import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:navigator/View/CartScreen.dart';
import 'package:navigator/View/FavScreen.dart';
import 'package:navigator/View/HomeView.dart';
import 'package:navigator/View/SettingsScreen.dart';
import 'package:navigator/provider/CurtProduct.dart';
import 'package:navigator/provider/ThemePrpvider.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
static String id='homescreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int index=0;
 List Views=[
   HomeView(),
  CartScreen(),FavScreen(),SettingsScreen()
 ];
GlobalKey<ScaffoldState> key=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Center(
          child: InkWell(
            onTap: (){
              Provider.of<ThemeProv>(context,listen:false ).ChangeTheme();
            },
              child: Text('Change Thems')),
        ),
      ),
key: key,
    bottomNavigationBar: BottomNavigationBar(
     onTap: (value){
setState(() {
  index=value;
});
     },
      currentIndex: index,
      selectedItemColor: Colors.deepPurple,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.cyanAccent,
      items: [
      BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),
      BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label: 'Cart'),
      BottomNavigationBarItem(icon:Icon(Icons.favorite),label: 'Favorite'),
      BottomNavigationBarItem(icon:Icon(Icons.settings),label: 'Settings'),

    ],
    ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                InkWell(
                onTap:(){
                key.currentState!.openDrawer();
                   },
                  child: Icon(Icons.menu,size: 35)),
                Spacer(),
                Container(
                    child: Row(
                      children: [
                        Badge(
                          badgeContent: Text(Provider.of<CartProvider>(context).cartProducts.length.toString(),style: TextStyle(color: Colors.white),),
                            child: Icon(Icons.shopping_cart_rounded,size: 35)),
                      ],
                    )),
              ],
            ),
          ),
            Expanded(child: Views[index])
        ],
      ),

    );
  }
}
