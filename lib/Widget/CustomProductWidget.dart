import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigator/View/ProductScreen.dart';
import 'package:navigator/model/Product.dart';
import 'package:navigator/provider/FavProduct.dart';
import 'package:provider/provider.dart';
class ProductWidget extends StatefulWidget {
  CategryModeL1? product;
ProductWidget({this.product});

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),

        child: Column(
          children: [
            Stack(
              children:[
            Container(
              height: 200.h,
               width: 250.w,
                     child: Image(image: NetworkImage(widget.product!.prandImage!),fit: BoxFit.cover,),
                   ),
               Positioned(
                 top: -3,
                 right: 0,
                 child: InkWell(
                   onTap: (){
                     Provider.of<FavProv>(context,listen: false).addtoFav(widget.product!);
                   },
                   child: Container(
                          height: 50.h,
                          width: 50.w,
                       child:  Icon(Icons.favorite_border,size: 35,),
                          ),
                 ),
                      ),
           ],
            ),

            Text(widget.product!.prandName!,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text(widget.product!.prandAbout!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
            Text(widget.product!.prandPrice!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color:Colors.red )),

          ],
        ),

    );
  }
}
