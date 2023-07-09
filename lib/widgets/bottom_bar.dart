import 'package:being_ambitious/screens/about.dart';
import 'package:being_ambitious/screens/blog.dart';
import 'package:being_ambitious/screens/home.dart';
import 'package:being_ambitious/screens/services.dart';
import 'package:flutter/material.dart';

class bottom_bar extends StatefulWidget {
  const bottom_bar({super.key});

  @override
  State<bottom_bar> createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> {
  static int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      print(_selectedIndex);
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    } else if (index == 1) {
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Services()));
    } else if (index == 2) {
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Blog()));
    } else if (index == 3) {
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Aboutus()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.blueGrey,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Services',
          backgroundColor: Colors.blueGrey,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.computer),
          label: 'Blog',
          backgroundColor: Colors.blueGrey,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'About',
          backgroundColor: Colors.blueGrey,
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed, // Fixed
      backgroundColor: Colors.indigo[400],
    );
  }
}
