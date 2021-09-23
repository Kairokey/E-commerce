import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigator/View/CartScreen.dart';
import 'package:navigator/View/CategoryScreen.dart';
import 'package:navigator/View/FavScreen.dart';
import 'package:navigator/View/ForgetScreen.dart';
import 'package:navigator/View/HomeScreen.dart';
import 'package:navigator/View/ProductScreen.dart';
import 'package:navigator/View/ResetPasswordScreen.dart';
import 'package:navigator/View/SettingsScreen.dart';
import 'package:navigator/View/SignINScreen.dart';
import 'package:navigator/View/SignUPScreen.dart';
import 'package:navigator/View/SplachScreen.dart';
import 'package:navigator/View/onpoardingView.dart';
import 'package:navigator/provider/CurtProduct.dart';
import 'package:navigator/provider/FavProduct.dart';
import 'package:navigator/provider/Quantati.dart';
import 'package:navigator/provider/ThemePrpvider.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(MultiProvider(
   providers: [
     ChangeNotifierProvider(create: (context)=>ThemeProv()),
    ChangeNotifierProvider(create: (context)=>CartProvider()),
     ChangeNotifierProvider(create: (context)=>Quantity()),
     ChangeNotifierProvider(create: (context)=>FavProv()),
   ],
      child: Commerce()));
}

class Qantati {
}
class Commerce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:()=> MaterialApp(
        theme: ThemeData(brightness:
        Provider.of<ThemeProv>(context).isDark?Brightness.dark :
        Brightness.light),
        debugShowCheckedModeBanner: false,
        home: SplachScreen(),
        routes: {
          SplachScreen.id:(context)=>SplachScreen(
          ),
          OnBoardingScreen.id:(context)=>OnBoardingScreen(),
          SignInScreen.id:(context)=>SignInScreen(),
          SignUPScreen.id:(context)=>SignUPScreen(),
          ForgetScreen.id:(context)=>ForgetScreen(),
          HomeScreen.id:(context)=>HomeScreen(),
        CartScreen.id:(context)=>CartScreen(),
          FavScreen.id:(context)=>FavScreen(),
          SettingsScreen.id:(context)=>SignInScreen(),
          ResetPasswordScreen.id:(context)=>ResetPasswordScreen(),
          CategoryScreen.id:(context)=>CategoryScreen(),
          ProductScreen.id:(context)=>ProductScreen(),

      },
      ),
    );
  }
}

