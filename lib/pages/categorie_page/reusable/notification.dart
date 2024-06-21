import 'package:flutter/cupertino.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard ({super.key});

  final double cardHeight = 70;
  final double cardwidth = double.infinity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardwidth,
      decoration: BoxDecoration(
        color: Color(0xffF2E4CE),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color(0xffFF9900),
          width: 2,
        ),  
      ),
      child: Padding(
        padding:  EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Get 100% off on Groceries Plus T&C Apply",style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xffFF9900),
            ),),
          Text("Sped payments with master and visa",style: TextStyle(
            fontSize: 12,
            color: Color(0xff3B3636).withOpacity(0.47),
          ),),
          ],
        ),
      ),
    
    );
  }
}