import 'package:flutter/material.dart';
import 'package:tractiondoggo/src/settings/theme.dart';

class NullScreen extends StatelessWidget {
  final String content;

  NullScreen({@required this.content});

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Icon(Icons.block, size: 100,),
          Text(content, style: AppTheme.nullTextTheme,),
        ],
      ),
    );
  }
}