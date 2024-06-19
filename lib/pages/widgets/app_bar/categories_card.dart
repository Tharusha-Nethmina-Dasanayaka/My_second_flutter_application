import 'package:flutter/cupertino.dart';

class CategoriesCard extends StatelessWidget {
  final String title;
  final String description;
  final Color mainbgColor;
  final Color boderColor;
  final Color smallContainerColor;

  const CategoriesCard({super.key, 
  required this.title, 
  required this.description, 
  required this.mainbgColor, 
  required this.boderColor, 
  required this.smallContainerColor});


  final double categoriesCardheight =70;
  final double categoriesCardwidth =160;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: categoriesCardwidth,
      height: categoriesCardheight,
      decoration: BoxDecoration(
        color:mainbgColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: boderColor,
        )
      ),
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff3B3636),
                  ),),
                  Text(description,style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff3B3636).withOpacity(0.47),
                  ),),
                ],
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: smallContainerColor,
              ),
            )
          ],),
      )

    );
  }
}