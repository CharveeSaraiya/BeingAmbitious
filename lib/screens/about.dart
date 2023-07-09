import 'package:flutter/material.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';

import '../widgets/MyPdfViewer.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/drawerCode.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'images/logo.png',
            width: 300,
          ),
        ),
        backgroundColor: Colors.indigo[400],
      ),
      drawer: DrawerCode(),
      bottomNavigationBar: bottom_bar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "About ",
                style: TextStyle(
                    color: Color.fromRGBO(218, 79, 44, 1),
                    fontSize: 30,
                    fontFamily: 'Arial'),
                // textAlign: TextAlign.left,
              ),
            ),
            Text(
              "Our team aims to work towards one goal,helping the clients meet their targets.We work round the clock to provide the best services and make sure we consider the client's needs at each step .We have a team of experts who focus on the expectations of the clients and work toward making their dream a reality.",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  fontFamily: 'Arial'),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Creativity,Content,Data & Technology",
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Arial'),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Our four pillars.We believe these are the key elements in digital marketing and design.We have a proven method of using data and creativity to improve your business results.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    fontFamily: 'Arial'),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/vision.png"),
                Image.asset("assets/images/mission.png")
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Image.asset("assets/images/corevalues.png"),
            Center(
              child: Text(
                "Our Team",
                style: TextStyle(
                    color: Color.fromRGBO(218, 79, 44, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: IconButton(
                    icon: Image.asset('assets/images/Akshaybanda.png'),
                    iconSize: 100,
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     // builder: (context) => MyPdfViewer(
                      //     //     pdfPath: 'assets/pdf/AkshayBanda.pdf'),
                      //   ),
                      // );
                    },
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Image.asset('assets/images/honeybanda.png'),
                    iconSize: 100,
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     // builder: (context) => MyPdfViewer(
                      //     //     pdfPath: 'assets/pdf/AkshayBanda.pdf'),
                      //   ),
                      // );
                    },
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Image.asset('assets/images/durgapuvvala.png'),
                    iconSize: 100,
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     // builder: (context) => MyPdfViewer(
                      //     //     pdfPath: 'assets/pdf/AkshayBanda.pdf'),
                      //   ),
                      // );
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
