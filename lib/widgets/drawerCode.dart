import 'package:being_ambitious/screens/about.dart';
import 'package:being_ambitious/screens/blog.dart';
import 'package:being_ambitious/screens/home.dart';
import 'package:being_ambitious/screens/services.dart';
import 'package:flutter/material.dart';
import 'bottom_bar.dart';

class DrawerCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Image.asset('images/logo.png'),
    //     backgroundColor: Colors.grey,
    //   ),
    //   body: Home(),
    //   // const Center(
    //   //   child: Text('My Page!'),
    //   // ),
    //   bottomNavigationBar: const bottom_bar(),
    //drawer:
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: <Widget>[
                Flexible(
                  child: Container(
                    width: 150,
                    height: 200,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      // shape: BoxShape.,
                      image: DecorationImage(
                          image: new AssetImage('assets/images/BAlogo.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                Text(
                  "BEING AMBITIOUS",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          // Image.asset('images/BAlogo.png'),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Services'),
            onTap: () {
              // Services();
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Services()));
            },
          ),
          ListTile(
            leading: Icon(Icons.computer),
            title: const Text('Blog'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Blog()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: const Text('About'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Aboutus()));
            },
          ),
        ],
      ),
    );
    // )
  }
}
