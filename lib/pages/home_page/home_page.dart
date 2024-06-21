import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/pages/home_page/reusable_widget/price_card.dart';
import 'package:myapp/pages/home_page/reusable_widget/product_card.dart';
import 'package:myapp/pages/home_page/search_bar.dart';
import 'package:myapp/pages/home_page/app_bar/app_bar.dart';

class HomePage extends StatelessWidget {
   const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: appBarleding,
        title: appBarTitle,
        actions: appBarAction,
      ),
      body:  const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBox(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Explore Categories",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Row(
                children: [
                  ProductCard(
                    title: "Vegetables",
                    description: "Vegetables are parts of plants that are consumed by humans...",
                    mainBoxColor: Color(0xff9E00FF),
                    smalBoxColor:Color(0xff06FFA5),
                    descriptionTextColor:Color(0xffC3C3C3),
                    titleTextColor:Colors.white
                  ),
                  ProductCard(
                    title: "Fish & Meat",
                    description: "Fish is the flesh of an animal used for food, and by that definition...",
                    mainBoxColor: Color(0xff9E00FF),
                    smalBoxColor:Color(0xff06FFA5),
                    descriptionTextColor:Color(0xffC3C3C3),
                    titleTextColor:Colors.white
                  ),
              ],),
              Row(
                children: [
                  ProductCard(
                    title: "Vegetables",
                    description: "Vegetables are parts of plants that are consumed by humans...",
                    mainBoxColor: Color(0xffFFE500),
                    smalBoxColor:Color(0xffFF9900),
                    descriptionTextColor:Color(0xff686060),
                    titleTextColor:Colors.black
                    
          
                  ),
                  ProductCard(
                    title: "Fish & Meat",
                    description: "Fish is the flesh of an animal used for food, and by that definition...",
                    mainBoxColor: Color(0xffFFE500),
                    smalBoxColor:Color(0xffFF9900),
                    descriptionTextColor:Color(0xff686060),
                    titleTextColor:Colors.black
                  ),
              ],),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Explore Categories",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PriceCard(
                    title: "Washing Liquid",
                    amount: 200,
                    unit: "ml",
                    price: 230,
                  ),
                  PriceCard(
                    title: "Coffee and Tea",
                    amount: 100,
                    unit: "g",
                    price: 30,
                  ),
                ],
              )
        
            ],
          ),
        ),
      )
    );
  }
}