import 'package:flutter/material.dart';
import 'package:navigator/model/Product.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigator/provider/CurtProduct.dart';
import 'package:navigator/provider/FavProduct.dart';
import 'package:navigator/provider/Quantati.dart';
import 'package:provider/provider.dart';
class ProductScreen extends StatefulWidget {
 static String id="Product";
 CategryModeL1? Product;
 ProductScreen({this.Product});
  @override
  _ProductScreenState createState() => _ProductScreenState();
}
class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: NetworkImage(widget.Product!.prandImage!),fit:BoxFit.cover
                ),
              ),
              height:250.h,
              width: 1.sw,
            child: Align(
          alignment: Alignment.topLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                BackButton(color: Colors.white,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: (){
                    Provider.of<FavProv>(context,listen: false).addtoFav(widget.Product!);
                  },
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 25.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
            ),
            Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.Product!.prandName!,style: TextStyle(fontSize: 25.sp),),
                )),
            SizedBox(height: 15.h,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('your brand properly is a necessary skill for building a successful clothing line. Not only does it help clarify what your company is all about, it also shows that the people behind the brand are knowledgeable on what they’re selling and know how to present a great idea. Your brand profile should be included on your website and in press releases.'
              ,style: TextStyle(fontSize: 17.sp),),
            ),
            Row
              (mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(onTap: (){
                      Provider.of<Quantity>(context,listen: false).addQuantity();
                    },
                        child: Icon(Icons.add)),
                    Container(child: Text(Provider.of<Quantity>(context).q.toString()),),
                    Container(height: 30.h,
                    width: 30,
                      child: InkWell(
                        onTap: (){
                          Provider.of<Quantity>(context,listen: false).supQuantity();
                        },
                        child: Icon(Icons.remove),
                      ),
                    )
                  ],
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text(widget.Product!.prandPrice!,style: TextStyle(fontSize: 25.sp),),
                  SizedBox(
                    width: 90.w,
                    height: 50.h,
                  
                  child: InkWell(
                    onTap: (){

                        Provider.of<CartProvider>(context,listen: false).addToCart(widget.Product);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("add to cart"),backgroundColor: Colors.green,));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Center(

                            child: Text('Add To Cart',style: TextStyle(color: Colors.white),)),
                      ),
                    ),

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
