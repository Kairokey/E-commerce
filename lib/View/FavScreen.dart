import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigator/provider/FavProduct.dart';
import 'package:provider/provider.dart';
class FavScreen extends StatelessWidget {
static String id='fav';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(
        itemCount: Provider.of<FavProv>(context).FavProducts.length,
        scrollDirection: Axis.vertical,
          itemBuilder: (context,index)
      {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 150.h,
                    width: 150.w,
                    child: Image.network(Provider.of<FavProv>(context,).FavProducts[index].prandImage!),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(Provider.of<FavProv>(context,).FavProducts[index].prandName!),
                  ),
                ],
              ),
            ),
          ],
        );
      }
      )

    );
  }
}
