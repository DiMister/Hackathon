import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class ComAvatar extends StatelessWidget {
 ComAvatar({super.key , required this.pic });
  String pic;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar( radius: 40,
        child: Image.asset(pic),
      ),
    );
  }
}