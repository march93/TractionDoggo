import 'package:flutter/material.dart';
import 'package:tractiondoggo/src/components/header_text.dart';

class UpdatesScreen extends StatelessWidget {
  static const String tag = 'updates-screen';

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 25,),
        HeaderText(content: 'Updates',),
      ],
    );
  }
}