import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkdin/Component/myappbar.dart';
import 'package:linkdin/Screens/home.dart';
import 'package:linkdin/Screens/notification.dart';
import 'package:linkdin/Screens/request.dart';
import 'package:linkdin/Screens/shop.dart';
import 'package:linkdin/Screens/television.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            backgroundColor: Colors.white,
            title: MyAppBar(),
          ),
          SliverToBoxAdapter(
              child: DefaultTabController(
            length: 6,
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                  child: TabBar(
                      indicatorColor: Colors.blue,
                      dividerColor: Colors.grey,
                      tabs: [
                        Icon(Icons.home),
                        Icon(Icons.tv),
                        Icon(Icons.people_sharp),
                        Icon(Icons.storefront_sharp),
                        Icon(Icons.notifications),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://scontent.fjlr2-1.fna.fbcdn.net/v/t39.30808-1/365642621_1364610814097275_1599072964389574444_n.jpg?stp=dst-jpg_p200x200&_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_ohc=ZDMsrhX_Sx4Ab7F6tQA&_nc_ht=scontent.fjlr2-1.fna&oh=00_AfASd6yvKzpgOqprzGNHvuJfrVviIzs2Pl2CoUN3juDrmA&oe=661D6FED'),
                        )
                      ]),
                ),
                Container(
                  height: 600,
                  child: TabBarView(children: [
                    MyHome(),
                    MyTelevision(),
                    MyRequest(),
                    MyShopPage(),
                    MyNotificationPage(),
                    Center(child: Text('6')),
                  ]),
                )
              ],
            ),
            initialIndex: 2,
          )),
        ],
      ),
    );
  }
}
