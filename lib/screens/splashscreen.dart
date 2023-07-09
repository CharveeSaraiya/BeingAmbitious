import 'package:being_ambitious/screens/home.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:splashscreen/splashscreen.dart';

Future main() async {
  runApp(MaterialApp(
      title: 'Sample Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Georgia',
        scaffoldBackgroundColor: Colors.tealAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyApp(),
      debugShowCheckedModeBanner: false));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 3,
        navigateAfterSeconds: Home(),
        title: new Text(
          'Being Ambitious',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.blueAccent),
        ),
        backgroundColor: Colors.white,
        image: new Image.asset('assets/images/BAlogo.png'),
        photoSize: 100.0,
        styleTextUnderTheLoader: new TextStyle(),
        loaderColor: Colors.white);
    // );
  }
}
