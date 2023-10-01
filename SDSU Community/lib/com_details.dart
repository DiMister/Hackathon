import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ComDetail extends StatelessWidget {
  ComDetail({super.key , required this.pic , required this.data , required this.title});
   String pic ;
   String data;
   String title;
  @override
  Widget build(BuildContext context) {
    timeDilation =2;
    return Scaffold(
     appBar: AppBar(title: Text( title,)),
     body: Column(

       children: [
        Hero( tag: 'dash' ,child: Image.asset(pic , width: double.infinity,)) , 

        Text(data)
       ],

     ),
    );
  }
}