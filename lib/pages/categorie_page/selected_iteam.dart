import 'package:flutter/material.dart';
import 'package:myapp/pages/categorie_page/widget/item_desc_card.dart';
import 'package:myapp/pages/categorie_page/widget/rating_card.dart';

class SelectedIteam extends StatelessWidget {
  const SelectedIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(20),
        color: const Color(0xffE0DCD6).withOpacity(0.29),
        border: Border.all(
          color: const Color(0xffE0DCD6).withOpacity(0.8),
          width: 8,
        ),
      ),
      
       child: const Padding(
         padding: EdgeInsets.symmetric(horizontal: 15,),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text("Vegetables",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              ),
              ItemDescCard(
                number: 1,
                description: "Vegetables are parts of plants that are consumed by humans...",
              ),
              ItemDescCard(
                number: 2,
                description: "Vegetables are parts of plants that are consumed by humans...",
              ),
              ItemDescCard(
                number: 3,
                description: "Vegetables are parts of plants that are consumed by humans...",
              ),
              ItemDescCard(
                number: 4,
                description: "Vegetables are parts of plants that are consumed by humans...",
              ),
              ItemDescCard(
                number: 5,
                description: "Vegetables are parts of plants that are consumed by humans...",
              ),
              SizedBox(height: 10,),
              RatingCard(),
         
            ],
          ),
       ),
    );
  }
}