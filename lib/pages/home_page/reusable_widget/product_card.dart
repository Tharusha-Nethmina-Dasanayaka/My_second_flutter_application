import 'package:flutter/cupertino.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final Color mainBoxColor;
  final Color smalBoxColor;
  final Color titleTextColor;
  final Color descriptionTextColor;
  const ProductCard({super.key, 
required this.mainBoxColor,
 required this.title, 
 required this.description, 
 required this.smalBoxColor, 
 required this.titleTextColor, 
 required this.descriptionTextColor,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
              height: 200,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: mainBoxColor,
              ),
              
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,style:  TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color:titleTextColor,
                    ),),
                    const SizedBox(height: 10,),
                    Text(description,style:  TextStyle(
                      fontSize: 12,
                      color:descriptionTextColor,
                      fontWeight: FontWeight.w400
                    ),),
                    const SizedBox(height: 10,),
                    
                    Container(
                      width:140,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color:smalBoxColor,
                      ),
                    )
                  ],
                
                ),
              ),
            ),
    );

  }
}