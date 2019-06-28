import 'package:flutter/material.dart';
import 'package:tractiondoggo/src/screens/listings_screen.dart';
import 'package:tractiondoggo/src/screens/updates_screen.dart';

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
      body: bodyScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: navItems(),
        onTap: (index) => _changeTab(index),
      ),
      floatingActionButton: _currentIndex == 1 ? floatingButton() : null,
    );
  }

  Widget bodyScreen() {
    switch (_currentIndex) {
      case 0:
        return UpdatesScreen();
      case 1:
        return ListingsScreen();
      case 2:
        return Container();
      default:
        return UpdatesScreen();
    }
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

  Widget floatingButton() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {},
    );
  }
}