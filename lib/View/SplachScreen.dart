import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigator/View/onpoardingView.dart';
class SplachScreen extends StatefulWidget {
static String id ='Splach';

  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {


  @override
  initState(){
    super.initState();
      Timer(Duration(seconds: 3),
          (){
        Navigator.popAndPushNamed(context, OnBoardingScreen.id);
          });

  }
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.deepPurple,
      body:Column(
      children: [
        Expanded(flex: 1,
          child: Container(
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [

          Center(child: Icon(FontAwesomeIcons.shopify,color: Colors.white,size: 120,)),
        SizedBox(height: 10,),
        Text('Welcome',style: TextStyle(color: Colors.grey,fontSize: 50,fontWeight: FontWeight.bold),),


  ],
),
          ),
        ),

        Align(alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text('From Mohamed Abdo',style: TextStyle(color: Colors.grey,fontSize:22,fontWeight: FontWeight.bold),),
          ),
        ),
      ],
    ),
          );





  }
}
