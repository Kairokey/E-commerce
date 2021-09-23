import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigator/View/SignINScreen.dart';
import 'package:navigator/Widget/CusomSignIn.dart';
class SignUPScreen extends StatelessWidget {
  static String id='signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
        Center(child:
        Icon(FontAwesomeIcons.shopify,size: 92,color: Colors.deepPurple,)),
            customSignIn(name:'Name',hint: 'Enter your Name',icons: Icons.person,secure: false,sufix: false,),

            customSignIn(name:'Email',hint: 'Enter your Mail',icons: Icons.email,secure: false,sufix: false,),
          customSignIn(name:'Password',hint: 'Enter your Password',icons: Icons.lock,secure: true,sufix: true,),
            customSignIn(name:'Confirm Password',hint: 'Enter your Password',icons: Icons.lock,secure: true,sufix: true,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
           height: 60,
           width: 400,
           child: Center(child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold ),)),
             decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             color: Colors.deepPurple

    ),
        ),
      ),
SizedBox(height: 10,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Center(child: Text('Already Have Account ?',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold ),)),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Center(child: InkWell(onTap: (){
          Navigator.pushNamed(context, SignInScreen.id);
        },
            child: Text('Sign IN',style: TextStyle(color: Colors.grey,fontSize: 27,fontWeight: FontWeight.bold ),))),
      ),

    ],
    )
    ],

    ),

    );
  }
}

