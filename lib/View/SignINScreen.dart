import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:navigator/View/ForgetScreen.dart';
import 'package:navigator/View/HomeScreen.dart';
import 'package:navigator/View/SignUPScreen.dart';
import 'package:navigator/Widget/CusomSignIn.dart';
class SignInScreen extends StatelessWidget {
 static String id='signin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body:
    Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        Center(child:
         Icon(FontAwesomeIcons.shopify,size: 92,color: Colors.deepPurple,)),
        customSignIn(name:'Email',hint: 'Enter your Mail',icons: Icons.email,secure: false,sufix: false,),
        customSignIn(name:'Password',hint: 'Enter your Password',icons: Icons.lock,secure: true,sufix: true,),
        Align(alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(onTap: (){
                Navigator.pushNamed(context, ForgetScreen.id);
              },
                  child: Text('Forget Password ?',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold ),)),
            )),
          InkWell(onTap: (){
            Navigator.pushNamed(context, HomeScreen.id);
          },
            child: Container(
              height: 50,
              width: 400,
              child: Center(child: Text('Sign IN',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold ),)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepPurple

              ),
            ),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text('Didn`t have account ?',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold ),)),
            ),
               Center(child: InkWell(onTap: (){
                 Navigator.pushNamed(context,SignUPScreen.id );
               },
                   child: Text('Sign UP',style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold ),))),
          ],
        ),
        Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('-OR-',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold ),),
        )),
        Container(
          height: 45  ,
          width: 400,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Icon(FontAwesomeIcons.facebook,size: 35,color: Colors.white,),
              SizedBox(width:80,),
              Center(child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text('SIGN IN WITH Facebook',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold ),),
              )),
            ],
          ),
          decoration: BoxDecoration(
              border: Border.all(

              ),
              color: Colors.indigo[700]

          ),
        ),
       SizedBox(height: 30,),
        Container(
          height: 45  ,
          width: 400,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.google,size: 35,color: Colors.red,),
              SizedBox(width:110,),
              Center(child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text('SIGN IN WITH Google',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold ),),
              )),
            ],
          ),
          decoration: BoxDecoration(

              border: Border.all(
            color: Colors.black

              ),
              color: Colors.white


          ),
        ),
      ],
    ),

    );

  }
}
