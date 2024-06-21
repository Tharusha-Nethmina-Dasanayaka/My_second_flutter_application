import 'package:flutter/material.dart';
import 'package:myapp/pages/categorie_page/reusable/notification.dart';
import 'package:myapp/pages/categorie_page/reusable/product_details/price_list.dart';
import 'package:myapp/pages/categorie_page/reusable/title_description_card.dart';
import 'package:myapp/pages/home_page/reusable_widget/gradint_button.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Product Details",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NotificationCard(),
              const SizedBox(height: 10,),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color(0xffFFF500).withOpacity(0.29),
                ),
                child: Center(
                  child: Icon(Icons.shopping_cart,
                  size: 200,
                  color: const Color(0xff333333).withOpacity(0.75),
                  ),
                ),
              ),
            const SizedBox(height: 20,),
            const TitleDescriptionCard(),
            const SizedBox(height: 20,),
            const TitleDescriptionCard(),

            const SizedBox(height: 20,),
            const Text("Price List",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color(0xff3B3636),
        ),),
         const SizedBox(height: 15,),
         const PriceList(
          number: 1,
          title: "Green peas ",
          productweight: 100,
          unit: "g",
         ),
         const SizedBox(height: 15,),
         const PriceList(
          number: 2,
          title: "Brussels sprouts. ",
          productweight: 100,
          unit: "g",
         ),
         const SizedBox(height: 15,),
         const PriceList(
          number: 3,
          title: "Broccoli",
          productweight: 100,
          unit: "g",
         ),
         const SizedBox(height: 10,),
         const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Total",style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),),
            SizedBox(width: 40,),
            Text("230\$",style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0xff9E00FF),
            ),)
          ],
         ),
         const SizedBox(height: 10,),
         const GradintButton(),
         const SizedBox(height: 20,),
            ],),
        )
      ),
    );
  }
}