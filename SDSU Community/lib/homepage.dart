import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hansagourmet/Loginform.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() { 
    super.initState();
    Timer(Duration(seconds: 1), () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage())); });
    
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Student Community',
          style: TextStyle(fontSize: 20, color: Colors.blue),
        ),
        SizedBox(
          height: 20,
        ),
        SvgPicture.asset(
          'assets/images/South_Dakota_State_University_logo.svg',
          fit: BoxFit.cover,
        ),
        SizedBox(height: 30,),
        CircularProgressIndicator(),
      ],
    );
  }
}
