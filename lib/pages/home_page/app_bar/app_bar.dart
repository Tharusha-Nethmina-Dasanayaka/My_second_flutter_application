import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget appBarleding = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: const Color(0xff9E00FF),
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Center(
              child: Icon(
                Icons.location_on,
                color: Colors.white,        
              ),
            ),
          ),
);

Widget appBarTitle =Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Delivery Address",style: TextStyle( 
              color: const Color(0xff3B3636).withOpacity(0.47),
              fontSize: 16,
            ),),
          const Text("92 High Street , London",style: TextStyle(
              color: Color(0xff3B3636),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),)
          ],
        );

List <Widget>? appBarAction =[
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xffFF9900).withOpacity(0.62),
              borderRadius: BorderRadius.circular(100),
            ),
              child: const Center(
                child: Icon(
                  Icons.shopping_bag,
                  color: Colors.white,        
                ),
              ),
                    ),
          ),

        ];