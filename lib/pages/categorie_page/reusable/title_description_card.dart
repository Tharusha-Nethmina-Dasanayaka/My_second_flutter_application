import 'package:flutter/material.dart';

class TitleDescriptionCard extends StatelessWidget {
  const TitleDescriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Product Information",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color(0xff3B3636),
        ),),
        const SizedBox(height: 10,),
        Text("vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: const Color(0xff3B3636).withOpacity(0.75)
        ),)
      ],
    );
  }
}