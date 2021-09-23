import 'package:flutter/material.dart';
class CategoryScreen extends StatelessWidget {
 static String id='CategoryScreen';
String? categoryname;
CategoryScreen({this.categoryname});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryname!),
      ),
      body: Center(
        child: Text('CategoryScreen'),
      ),
    );
  }
}
