

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hansagourmet/community.dart';

import 'package:hansagourmet/feed_items.dart';
import 'package:hansagourmet/homepage.dart';
import 'package:hansagourmet/notification.dart';


class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List <Widget> widgetoption = [ CommScreen(), FeedSliders() , NotificationScreen()];
  Widget Activepage  = FeedSliders();
  @override
  Widget build(BuildContext context) {
    int index = 1;
    return Scaffold( 
      drawer: Drawer( backgroundColor: Color.fromARGB(150, 0, 0, 0) ,child: ListView(
        
        children: [
          ListTile(title: Text('account settings'),),
          ListTile(title: Text('privacy policy'),),
          ListTile(title: Text('about us '),)
        ],
      ),),
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: SvgPicture.asset(
              'assets/images/South_Dakota_State_University_logo.svg'),
        ),
        title: const Text('Student Community'),
      ),
      body: Activepage ,
      bottomNavigationBar:  BottomNavigationBar(
        items: <BottomNavigationBarItem>[
             BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline_sharp),
            label: "Community",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_outlined),
            label: "News",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          )
        ],
        currentIndex: index,
        onTap: (i) {
          setState(() {
            index = i;
            Activepage = widgetoption[i];
            print(index);
          });
        },
       selectedItemColor: Colors.blue,
      ),
    );
  }
}

class FeedSliders extends StatelessWidget {
  const FeedSliders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          FeedItem(
            pic: 'assets/images/football.jpg',
            heading1: 'Football game this saturday ',
            heading2:
                'there is a football game this saturday tickets for students are free',
            color1: Color.fromARGB(98, 167, 238, 143),
            color2: Color.fromARGB(51, 180, 255, 161),
          ),
          SizedBox(
            height: 20,
          ),
          FeedItem(
            pic: 'assets/images/parkinglot.jpg',
            heading1: 'parking lot under construction',
            heading2:
                'the main parking lot outside the young hall is getting renovated ',
            color1: Color.fromARGB(163, 255, 245, 245),
            color2: Color.fromARGB(119, 167, 153, 153),
          ),
          SizedBox(
            height: 20,
          ),
          FeedItem(
            pic: 'assets/images/research.jpg',
            heading1: 'sdsu students reasearched about biotechnology ',
            heading2: 'recently 3 students from sdsu got nobel piece price ',
            color1: Color.fromARGB(124, 65, 117, 194),
            color2: Color.fromARGB(146, 74, 86, 193),
          ),
          SizedBox(
            height: 20,
          ),
          FeedItem(
            pic: 'assets/images/feedback.jpg',
            heading1: 'career fair next thursday',
            heading2: 'there is ',
            color1: Color.fromARGB(152, 121, 157, 222),
            color2: Color.fromARGB(28, 172, 165, 236),
          ),
        ],
      ),
    );
  }
}
