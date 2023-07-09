import 'package:being_ambitious/widgets/bottom_bar.dart';
import 'package:being_ambitious/widgets/drawerCode.dart';
import 'package:being_ambitious/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerCode(),
      bottomNavigationBar: const bottom_bar(),
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'images/logo.png',
            width: 300,
          ),
        ),
        backgroundColor: Colors.indigo[400],
      ),
      //  backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              child: Carousel(
                boxFit: BoxFit.fill,
                images: [
                  AssetImage('assets/images/marketingcover.jpg'),
                  AssetImage('assets/images/designingcover.jpg'),
                  AssetImage('assets/images/technologycover.jpg'),
                  AssetImage('assets/images/ideascover.jpg'),
                ],
                autoplay: true,
                dotColor: Colors.yellow,
                dotBgColor: Colors.black,
                dotSize: 5.0,
                dotSpacing: 20.0,
              ),
            ),
            // Container(
            //   // margin: EdgeInsets.all(8.0),
            //   width: double.infinity,
            //   height: 300,
            //   child: Stack(
            //     fit: StackFit.expand,
            //     children: <Widget>[
            //       Opacity(
            //         opacity: 0.4,
            //         child: Image.asset(
            //           "assets/images/homecover.jpg",
            //           fit: BoxFit.cover,
            //           //  width: double.infinity,
            //         ),
            //       ),
            //       // Center(
            //       //   child:

            //       Column(
            //         children: [
            //           const Text(
            //             "Developing impactful products,crafting,meaningful brands.",
            //             style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 30,
            //                 fontFamily: 'Gilory',
            //                 fontWeight: FontWeight.w100),
            //           ),
            //           // ),
            //           const Text(
            //             "Our aim is to help you fulfil your dreams and turn them into reality.We believe in your vision and are dedicated enough todo the exemplified.",
            //             style: TextStyle(
            //               color: Colors.black,
            //               fontWeight: FontWeight.bold,
            //               fontSize: 20,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      // SizedBox(
                      //   height: 20,
                      // ),
                      Text(
                        "One-step Solution for your Digitital Needs.",
                        style: TextStyle(
                          fontFamily: 'Gilory',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Its a digital era and your brand needs a push towards it\n.The medium to build brands have changed and we believe\n in giving wings to your ideas.we believe in delivering engaging\n user experiences and building brands",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Container(
                    //  color: Colors.red[300],
                    height: 250,
                    // width: 600,
                    margin: EdgeInsets.all(2.0),
                    child: Image.asset(
                      "assets/images/homedec.png",
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 400,
              width: double.infinity,
              child: Image.asset(
                "assets/images/projcomp.png",
                fit: BoxFit.fill,
              ),
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
