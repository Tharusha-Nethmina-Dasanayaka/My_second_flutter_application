import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  final String title;
  final double amount;
  final String unit;
  final double price;
  const PriceCard({super.key, 
  required this.title, 
  required this.amount, 
  required this.unit, 
  required this.price, 
  });

  final double priceCardHeight =230;
  final double priceCardWidth = 170;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: priceCardHeight,
      width: priceCardWidth,
      decoration: BoxDecoration(
        color: const Color(0xff9E00FF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical:15,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xff06FFA5),
              ),
            ),
            const SizedBox(height: 10,),
            Text(title,style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xffFFFFFF),
            ),),
            const SizedBox(height: 6,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(amount.toString() + unit,style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xffFFFFFF),
            ),),
                    Text("$price\$",
                    style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0xffFFE500),
            ),),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: const Color(0xffFFFFFF),
                      width: 3,
                    ),
                  ),
                  child: const Center(
                    child: Icon(Icons.add,
                    color: Colors.white,
                    size: 25,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}