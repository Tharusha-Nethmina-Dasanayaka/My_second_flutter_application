import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/categorie_page/selected_iteam.dart';
import 'package:myapp/pages/categorie_page/widget/categories_card.dart';
import 'package:myapp/pages/categorie_page/reusable/notification.dart';

class CategoriePage extends StatelessWidget {
  const CategoriePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Categories", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NotificationCard(),
              SizedBox(height: 10,),
              Text("All Categories",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
          
              ),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                   
                    children: [
                      CategoriesCard(
                title: "Vegetables &\nFruits",
                description: "20+ more ...",
                mainbgColor: Color(0xff0057FF).withOpacity(0.29),
                boderColor:  Color(0xff0094FF).withOpacity(0.91),
                smallContainerColor: Color(0xff0E00AC),
              ),
              
              CategoriesCard(
                title: "Cooking&\nElements",
                description: "10+ more ...",
                mainbgColor: Color(0xff00E0FF).withOpacity(0.29),
                boderColor:  Color(0xff00F0FF),
                smallContainerColor: Color(0xff10C0F8),
              ),
              CategoriesCard(
                title: "Vegetables &\nFruits",
                description: "20+ more ...",
                mainbgColor: Color(0xffFF3D00).withOpacity(0.29),
                boderColor:  Color(0xffFFA800).withOpacity(0.91),
                smallContainerColor: Color(0xffE56C6C),
              ),
                    ],
                  ),
                  Column(
                    children: [
                      CategoriesCard(
                title: "Bites&\nDrinks",
                description: "53+ more ...",
                mainbgColor: Color(0xff70FF00).withOpacity(0.29),
                boderColor:  Color(0xff00FF29).withOpacity(0.91),
                smallContainerColor: Color(0xff06FFA5),
              ),
              CategoriesCard(
                title: "Chicken&\nBeef",
                description: "2+ more ...",
                mainbgColor: Color(0xffFFF500).withOpacity(0.29),
                boderColor:  Color(0xffFFB800).withOpacity(0.91),
                smallContainerColor: Color(0xffFF9900),
              ),
              CategoriesCard(
                title: "Transport&\nVehicles",
                description: "20+ more ...",
                mainbgColor: Color(0xffCC00FF).withOpacity(0.29),
                boderColor:  Color(0xffCC00FF).withOpacity(0.91),
                smallContainerColor: Color(0xffDB00FF),
              ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Text("Selected Items",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),),
              SizedBox(height: 10,),
              SelectedIteam(),

            ],
          ),
        ),
      ),
    );
  }
}