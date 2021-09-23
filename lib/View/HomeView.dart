import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigator/View/CategoryScreen.dart';
import 'package:navigator/View/ProductScreen.dart';
import 'package:navigator/Widget/CustomProductWidget.dart';
import 'package:navigator/model/Category.dart';
import 'package:navigator/model/Product.dart';
class HomeView extends StatelessWidget {
  static String id ='Home';
  List  images=[AssetImage('image/-1.jpg'),AssetImage('image/-2.jfif'),AssetImage('image/-3.jfif'),AssetImage('image/-4.jpg')];
  List  <CategoryModel> CategoryNames=[
    CategoryModel(categoryName: 'chemise',categoryImage:'image/1.jpg' ),
    CategoryModel(categoryName: 'caps',categoryImage:'image/2.jpg' ),
    CategoryModel(categoryName: 'Jackets',categoryImage:'image/3.jpg' ),
    CategoryModel(categoryName: 'page',categoryImage:'image/4.jpg' ),
    CategoryModel(categoryName: 'shoes',categoryImage:"image/5.jpg" ),
    CategoryModel(categoryName: 'Pantalons',categoryImage:'image/6.jpg' ),
    CategoryModel(categoryName: 'Watches',categoryImage:'image/7.jpg' ),
];
  List <CategryModeL1>CategoryPrand=[
    CategryModeL1(prandName: 'Puma',prandAbout: 'Shoes Puma',prandPrice: '700 L.E',prandImage: "https://thumbs.dreamstime.com/b/vienna-austria-february-puma-ignite-evoknit-low-black-white-sneaker-white-background-puma-ignite-evoknit-low-black-180562913.jpg"),
    CategryModeL1(prandName: 'Nike',prandAbout: 'Clothes Nike',prandPrice: '900 L.E',prandImage: "https://s3.amazonaws.com/nikeinc/assets/47582/Nike_Buenos_Aires____native_1600.jpg?1443731089"),
    CategryModeL1(prandName: 'Elnems',prandAbout: 'Best Clothes',prandPrice: '1400 L.E',prandImage: "https://st4.depositphotos.com/16122460/i/600/depositphotos_234094342-stock-photo-wardrobe-rack-men-clothes-grey.jpg"),
    CategryModeL1(prandName: 'Zara',prandAbout: 'Jacket Zara',prandPrice: '1700 L.E',prandImage: "https://thumbs.dreamstime.com/b/women-s-denim-clothing-collection-gray-background-composition-jacket-jeans-146473401.jpg"),
    CategryModeL1(prandName: 'Ferrari',prandAbout: 'T-Shirt Ferrari',prandPrice: '700 L.E',prandImage: "https://lh3.googleusercontent.com/proxy/MBSqW2PTeJcqxXBJNKG_lVHjBRhwgjiNW2UE8iyFiVKyyjbnAOlJ-upEdx2vDXVynK3m6fV9jjkV74sVkLHL7GFszt_kKZu-GkNKkxhGeGqqX_UuaCLnBUW_AQcBVoGug_sMhTqsn_Kz7leDRlcGTcCb"),
  ];

  @override
  Widget build(BuildContext context) {
return SafeArea(child: Scaffold(
body: ListView(
  scrollDirection: Axis.vertical,
  children: <Widget>[  SingleChildScrollView(
    child: Container(
      child:   Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 60.h,
                width: 500.w,
                child: TextField(style:TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.search,size: 35.h,),
                    ),
                    labelText: 'Search',
                    labelStyle: TextStyle(
                      fontSize: 15,fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(50)
                ),
              ),
            ),
          ),
          Container(height: 120.h,
              child: ListView.builder(
                itemCount: CategoryNames.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)
              {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryScreen(categoryname:CategoryNames[index].categoryName,),),);
              },
                    child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40.r,
                       backgroundColor: Colors.grey[300],
                        backgroundImage:AssetImage(CategoryNames[index].categoryImage!),
                      ),
                      Text(CategoryNames[index].categoryName!),
                    ],
                    ),
                  ),
                );
              },
              ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('New Arrival',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('All>>',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              )
            ],
          ),
          SizedBox(height: 10.h,),
          Container(
            height: 300.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: CategoryPrand.length,
                itemBuilder: (context,index)
            {
              return InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen(
                  Product: CategoryPrand[index],
                ),
                ),
                );
              },

                  child: ProductWidget(product:CategoryPrand[index],)
              );
              },

            ),
        ),
          SizedBox(height: 15,),
          Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 350.h,
            width: 400.w,
            child: Center(
              child: Swiper(
                pagination: SwiperPagination(builder: SwiperPagination.fraction),
                  autoplay: true,
                  itemBuilder: (context,index){
                return Container(
                  height: 350.h,
                  width: 450.w,
                  child: Image(image: images[index],fit: BoxFit.cover,),
                );
              }, itemCount:images.length),
            ),
          ),
        ),


        ],
      ),
    ),
  ),
    ],
),


),
);
}
}