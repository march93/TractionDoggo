import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tractiondoggo/src/screens/home_screen.dart';
import 'package:tractiondoggo/src/screens/screens.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: MaterialApp(
        title: 'Traction Doggo',
        home: HomeScreen(),
        routes: Screens.routes,
      ),
    );
  }
}