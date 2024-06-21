import 'package:flutter/material.dart';
// import 'package:myapp/pages/categorie_page/categorie_page.dart';
import 'package:myapp/pages/product_details/product_details.dart';
// import 'package:myapp/pages/home_page/home_page.dart';

void main() {
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Grocery Apop",
      // home: CategoriePage(),
      // home: HomePage(),
      home: ProductDetails(),
      
    );
  }
}