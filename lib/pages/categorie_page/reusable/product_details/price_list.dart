import 'package:flutter/material.dart';

class PriceList extends StatelessWidget {
  final int number;
  final String title;
  final double productweight;
  final String unit;
  const PriceList({super.key, 
  required this.number, 
  required this.title, 
  required this.productweight, 
  required this.unit
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color(0xffFFE500),
              ),
              child: Center(
                child: Text(number.toString(),style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
              ),
            ),
            SizedBox(
              width: 100,
              child: Text(title,style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color(0xff3B3636).withOpacity(0.75),
              ),
              overflow: TextOverflow.ellipsis,),
            ),
            Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xffD9D9D9).withOpacity(0.4),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("$productweight" "$unit",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                    Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: const Color(0xff3B3636),
              width: 2,
            ),
          ),
          child: const Center(
            child: Icon(Icons.add,
            size: 18,),
          ),
        ),
         Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: const Color(0xff3B3636),
              width: 2,
            ),
          ),
          child: const Center(
            child: const Icon(Icons.remove,
            size: 18,),
          ),
        ),
                   
                  ],
                ),
              ),
            ),
          ],
        ),
         const Divider(),

      ],
    );
  }
}