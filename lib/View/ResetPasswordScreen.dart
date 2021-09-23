import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigator/View/SignINScreen.dart';
import 'package:navigator/Widget/CusomSignIn.dart';
class ResetPasswordScreen extends StatelessWidget {
 static String id='Reset';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:Column(
      mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Padding(
      padding: const EdgeInsets.all(30.0),
      child: Icon(FontAwesomeIcons.shopify,size:200,color: Colors.deepPurple,),
    ),
    SizedBox(height: 60,),
    customSignIn(name: 'New Password',icons: Icons.lock,hint: 'Enter New Password',secure: true,sufix: true,),
    customSignIn(name: 'Confirm New Password',icons: Icons.lock,hint: 'Confirm Enter New Password',secure: true,sufix: true,),
    InkWell(
      onTap: (){
        Navigator.popAndPushNamed(context, SignInScreen.id);
      },
      child: Container(
        height: 50,
        width: 400,
        child: Center(child: Text('Save',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold ),)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.deepPurple
        ),
      ),
    ),
  ],
),
    );
  }
}
