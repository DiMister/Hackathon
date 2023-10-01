import 'package:flutter/material.dart';
import 'package:hansagourmet/com_details.dart';

class CommFeed extends StatelessWidget {
   CommFeed({super.key , required this.usern , required this.pic , required this.data});
   String usern;
   String pic;
   String data;
  @override
  Widget build(BuildContext context) {
    return Container( 
      child: Column(
        children: [
          Container(
            color: const Color.fromARGB(70, 0, 0, 0),
            height: 40,
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CircleAvatar(
                    child: Icon(Icons.person),
                    radius: 15,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(usern)
              ],
            ),
          ),
          Container(
            height: 230,
            width: double.infinity,
            child: Stack(
              children: [
                Hero(
                    tag: 'dash',
                    child: Image.asset(
                      pic,
                      height: 200,
                      width: double.infinity,
                    )),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => ComDetail( pic: pic, title: usern, data: 'A dedicated student group specializing in Data Structures and Algorithms (DSA) provides valuable assistance to their classmates by simplifying complex concepts. Through collaborative study sessions, they elucidate intricate DSA topics, offering step-by-step explanations and practical examples. This group fosters a supportive learning environment where peers can ask questions, exchange insights, and enhance their understanding of DSA. By sharing their knowledge and expertise, they empower fellow students to excel in their coursework, ultimately promoting academic success and a deeper comprehension of this critical subject matter                                       email:- Contact@test.com',)));
                      },
                      child: Container(
                          height: 80,
                          width: double.infinity,
                          color: const Color.fromARGB(210, 0, 0, 0),
                          child: Text(
                              data)),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
