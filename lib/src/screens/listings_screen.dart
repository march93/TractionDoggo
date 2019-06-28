import 'package:flutter/material.dart';
import 'package:tractiondoggo/src/components/header_text.dart';

class ListingsScreen extends StatelessWidget {
  static const String tag = 'listings-screen';

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 25,),
        HeaderText(content: 'Listings',),
        SizedBox(height: 50,),

        // List view of dog listings
      ],
    );
  }
}