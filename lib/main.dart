//Import a package for random number and create list view for the random number for the product description
import 'package:flutter/material.dart';
import 'package:task8package/pages/products.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Products(),
    );
  }
}