import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String tag = 'home-screen';

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {  
  int _currentIndex = 0;

  void _changeTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: navItems(),
        onTap: (index) => _changeTab(index),
      ),
    );
  }

  List<BottomNavigationBarItem> navItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.assessment),
        title: Text('Updates'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.library_add),
        title: Text('Listings'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text('People'),
      ),
    ];
  }
}