import 'package:flutter/material.dart';

class FeedItem extends StatelessWidget {
  const FeedItem({super.key , required this.pic , required this.heading1 , required this.heading2  , required this.color1 , required this.color2});
  final String pic; 
  final String heading1;
  final String heading2;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: sized_box_for_whitespace
      child: Container(
        decoration:  BoxDecoration(
            gradient: LinearGradient(colors: [
          color1 , color2
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        width: 370,
        height: 300,
        child: Column(
          children: [
            Image.asset(pic , ),
            
                    Text(  heading1,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
             Text(
              heading2 ,
              textAlign: TextAlign.center,
              style: TextStyle(),
            )
          ],
        ),
      ),
    );
  }
}
