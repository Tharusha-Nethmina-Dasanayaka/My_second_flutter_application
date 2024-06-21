import 'package:flutter/material.dart';

class RatingCard extends StatelessWidget {
  const RatingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffCACACA).withOpacity(0.31),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.star,
            color: Color(0xffFFE500),
            size: 30,
            ),
            const Icon(Icons.star,
            color: Color(0xffFFE500),
            size: 30,
            ),
            const Icon(Icons.star,
            color: Color(0xffFFE500),
            size: 30,
            ),
            const Icon(Icons.star,
            color: Color(0xffFFE500),
            size: 30,
            ),
            Icon(Icons.star,
            color: const Color(0xff3B3636).withOpacity(0.71),
            size: 30,
            ),
          ],
         ),
      ),
    );
  }
}