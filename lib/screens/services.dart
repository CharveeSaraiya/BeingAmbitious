import 'package:being_ambitious/widgets/bottom_bar.dart';
import 'package:being_ambitious/widgets/carousel.dart';
import 'package:flutter/material.dart';

import '../widgets/drawerCode.dart';

class Services extends StatelessWidget {
  Services({super.key});

  final List<String> MarketUrls = [
    'assets/images/coro_1.png',
    'assets/images/coro_2.png',
    'assets/images/coro_3.png',
    'assets/images/coro_4.png',
    'assets/images/coro_5.png',
    'assets/images/coro_6.png',
    'assets/images/coro_7.png',
    'assets/images/coro_8.png',
    'assets/images/coro_9.png',
  ];
  final List<String> DesignUrls = [
    'assets/images/des_1.png',
    'assets/images/des_2.png',
    'assets/images/des_3.png',
    'assets/images/des_4.png',
    'assets/images/des_5.png',
  ];
  final List<String> TechUrls = [
    'assets/images/tech_1.png',
    'assets/images/tech_2.png',
    'assets/images/tech_3.png',
    'assets/images/tech_4.png',
    'assets/images/tech_5.png',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: DrawerCode(),
        bottomNavigationBar: const bottom_bar(),
        appBar: AppBar(
          title: Center(
            child: Image.asset('images/logo.png', width: 300),
          ),
          backgroundColor: Colors.indigo[400],
          bottom: TabBar(
              indicatorWeight: 10,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), // Creates border
                  color: Colors.amberAccent),
              tabs: [
                Tab(text: 'Marketing'),
                Tab(text: 'Designing'),
                Tab(text: 'Technology'),
              ]),
        ),
        body: TabBarView(
          children: [
            //   // Content of Tab 1
            Column(
              children: [
                SizedBox(height: 100, width: 200),
                Text(
                  "Our Work",
                  style: TextStyle(
                      color: Color.fromRGBO(218, 79, 44, 1), fontSize: 20),
                ),
                Text(
                  "Helping businesses achieve goals.",
                  style: TextStyle(fontSize: 15),
                ),
                Text("Solving people's problems.",
                    style: TextStyle(fontSize: 15)),
                SizedBox(height: 100, width: 200),
                ImageCarousel(imageUrls: MarketUrls),
              ],
            ),

            Column(
              children: [
                SizedBox(height: 100, width: 200),
                Text(
                  "Our Work",
                  style: TextStyle(
                      color: Color.fromRGBO(218, 79, 44, 1), fontSize: 20),
                ),
                Text(
                  "Helping businesses achieve goals.",
                  style: TextStyle(fontSize: 15),
                ),
                Text("Solving people's problems.",
                    style: TextStyle(fontSize: 15)),
                SizedBox(height: 100, width: 200),
                ImageCarousel(imageUrls: DesignUrls),
              ],
            ),

            Column(
              children: [
                SizedBox(height: 100, width: 200),
                Text(
                  "Our Work",
                  style: TextStyle(
                      color: Color.fromRGBO(218, 79, 44, 1), fontSize: 20),
                ),
                Text(
                  "Helping businesses achieve goals.",
                  style: TextStyle(fontSize: 15),
                ),
                Text("Solving people's problems.",
                    style: TextStyle(fontSize: 15)),
                SizedBox(height: 100, width: 200),
                ImageCarousel(imageUrls: TechUrls),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
