import 'package:flutter/material.dart';

class GradintButton extends StatelessWidget {
  const GradintButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: const LinearGradient(colors:[Color(0xffCC00FF),Color(0xffFFE500)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          ),
        ),
        child: const Center(
          child: Text("Proceed To Pay",style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),),
        ),
      ),
    );
  }
}