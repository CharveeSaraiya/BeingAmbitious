import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/drawerCode.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});

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
        bottomNavigationBar: const bottom_bar(),
        body: Container());
  }
}
