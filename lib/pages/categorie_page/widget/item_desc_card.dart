import 'package:flutter/material.dart';

class ItemDescCard extends StatelessWidget {
  final int number;
  final String description;

  const ItemDescCard({super.key, 
  required this.number, 
  required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: const Color(0xffFFE500),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(number.toString()),
            ),
          ),
          SizedBox(
            width: 250,
            child: Text(description),
            ),
        ],
      ),
    );
  }
}