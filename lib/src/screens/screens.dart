import 'package:flutter/material.dart';
import 'package:tractiondoggo/src/screens/home_screen.dart';
import 'package:tractiondoggo/src/screens/listings_screen.dart';
import 'package:tractiondoggo/src/screens/updates_screen.dart';

class Screens {
  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder> {
    HomeScreen.tag: (_) => HomeScreen(),
    UpdatesScreen.tag: (_) => UpdatesScreen(),
    ListingsScreen.tag: (_) => ListingsScreen(),
  };
}