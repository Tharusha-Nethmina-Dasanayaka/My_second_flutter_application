import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xffD9D9D9).withOpacity(0.50),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: const Color(0xff000000).withOpacity(0.50),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.search,
                    color: const Color(0xff000000).withOpacity(0.50),),
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "search here...",
                        border: InputBorder.none,
                      ),
                    )),
                ],
              ),
            
            ),
          );
  }
}