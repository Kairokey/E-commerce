import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigator/View/ResetPasswordScreen.dart';
import 'package:navigator/Widget/CusomSignIn.dart';
class  ForgetScreen extends StatelessWidget {
  static String id='forget';
  @override
  Widget build(BuildContext context) {
    return Scaffold( body:
    Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
    Center(child:
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Icon(FontAwesomeIcons.shopify,size: 92,color: Colors.deepPurple,),
    )),
   Image.asset('image/11.jpg',height: 300,width:double.infinity,),
    customSignIn(name:'Email',hint: 'Enter your Mail',icons: Icons.email,secure: false,sufix: false,),

    Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(onTap: (){
        Navigator.pushNamed(context, ResetPasswordScreen.id);
      },
        child: Container(
        height: 50,
        width: 400,
        child: Center(child: Text('Reset Password',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold ),)),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.deepPurple
        ),
        ),
      ),
    ),

      ],

    ),
    );
  }
}
