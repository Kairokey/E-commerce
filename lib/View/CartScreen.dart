import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator/provider/CurtProduct.dart';
import 'package:navigator/provider/Quantati.dart';
import 'package:provider/provider.dart';
class CartScreen extends StatelessWidget {
 static String id='cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: Provider.of<CartProvider>(context).cartProducts.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context,index){
          return
           Row(
             children: [Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 height: 150.h,
                 width: 150.w,
                child: Image.network(Provider.of<CartProvider>(context).cartProducts[index].prandImage!,fit:BoxFit.cover,),

                 ),
             ),

               Column(
                 children: [
                   Text(Provider.of<CartProvider>(context).cartProducts[index].prandName!),
                   Text(Provider.of<CartProvider>(context).cartProducts[index].prandPrice!),
                 ],
               ),
              Spacer(),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   children: [
                     InkWell(
                       onTap:(){
                       Provider.of<CartProvider>(context,listen: false).removeFromCart(Provider.of<CartProvider>(context,listen: false).cartProducts[index]);
              },
                          child: Icon(Icons.restaurant_menu)),
                     Text(Provider.of<Quantity>(context).q.toString()),
                   ],
                 ),
               ),
             ],
          );
        }),
      ),
    );
  }
}
