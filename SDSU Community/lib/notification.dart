import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return  Center(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Icon(Icons.cloud_off,
                size: 50, color: Color.fromARGB(255, 11, 104, 225)),
            Center(
              child: Text("no new notification "),
            ),
          ],
        ),
      );
  }
}