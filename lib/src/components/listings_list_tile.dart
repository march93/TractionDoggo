import 'package:flutter/material.dart';
import 'package:tractiondoggo/src/settings/theme.dart';

class ListingsListTile extends StatelessWidget {
  final Map<String, String> data;

  ListingsListTile({@required this.data});

  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
      elevation: 12,
      child: Container(
        padding: EdgeInsets.all(20),
        child: _cardBody(),
      ),
    );
  }

  Widget _cardBody() {
    return Row(
      children: <Widget>[
        _createImage(data['imageURL']),
        Text(data['name'], style: AppTheme.nullTextTheme,),
      ],
    );
  }

  Widget _createImage(String imgURL) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            imgURL,
          ),
        ),
      ),
    );
  }
}