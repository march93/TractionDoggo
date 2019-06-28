import 'package:flutter/material.dart';
import 'package:tractiondoggo/src/settings/theme.dart';

class HeaderText extends StatelessWidget{
  final String content;
  final TextStyle headerText = AppTheme.headerTheme;

  HeaderText({@required this.content});

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, top: 10),
      child: Text(
        content,
        style: headerText,
      ),
    );
  }
}