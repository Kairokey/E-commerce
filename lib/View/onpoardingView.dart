import 'package:flutter/material.dart';
import 'package:navigator/View/SignINScreen.dart';
class OnBoardingScreen extends StatelessWidget {
 static String id='onboarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.deepPurple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('image/230.png')),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_downward_sharp,color: Colors.grey,size: 30,),
          ),
          InkWell(onTap: (){
            Navigator.pushNamed(context, SignInScreen.id);
          },
            child: Container(
              height: 60,
              width: 160,
       child: Center(
         child: Row(
             children: [

               Center(child: Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Text("Start",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 30),),
               )),

             Center(child: Padding(
               padding: const EdgeInsets.all(10.0),
               child: Icon(Icons.shopping_cart,size:40,color: Colors.deepPurple,),
             )),
             ],
         ),
       ),
       decoration: BoxDecoration(

         borderRadius: BorderRadius.circular(25),
         color: Colors.white,
       ),
            ),
          )

        ],
      ),

    );
  }
}
