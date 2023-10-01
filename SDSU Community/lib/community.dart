import 'package:flutter/material.dart';
import 'package:hansagourmet/comm_avatar.dart';
import 'package:hansagourmet/commfeed.dart';

class CommScreen extends StatefulWidget {
  const CommScreen({super.key});

  @override
  State<CommScreen> createState() => _CommScreenState();
}

class _CommScreenState extends State<CommScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ComAvatar(pic: 'assets/images/adobe.png',),
                ComAvatar(pic: 'assets/images/html.png' ,),
                ComAvatar(pic: 'assets/images/js.png',),
                ComAvatar(pic: 'assets/images/jslogo.png',),
                 ComAvatar(pic: 'assets/images/c.png',),
                // ComAvatar(),
                // ComAvatar(),
              ],
            ),
          ),
          CommFeed(usern: 'dsa 160', pic: 'assets/images/Dsa.png', data: 'this class is for students struglling in data Structures and algorithms ',), 

          CommFeed(usern: 'Flutter app development', pic: 'assets/images/flutter.png' , data: 'this class is for students struglling in data Structures and algorithms ',),

          CommFeed(usern: 'pyhton code ', pic: 'assets/images/py.png', data: 'this class is for students struglling in data Structures and algorithms ',),

          CommFeed(usern: 'robotics club', pic: 'assets/images/Robotics club assembly.jpg', data: 'this class is for students struglling in data Structures and algorithms ',),

          CommFeed(usern: 'unity development', pic: 'assets/images/18392 (1).png', data: 'this class is for students struglling in data Structures and algorithms ',)
        ],
      ),
    );
  }
}
