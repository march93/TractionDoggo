import 'package:flutter/material.dart';

class ListingsListTile extends StatelessWidget {
  final Map<String, String> data;

  ListingsListTile({@required this.data});

  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
      elevation: 12,
      child: _cardBody(),
    );
  }

  Widget _cardBody() {
    return Row(
      children: <Widget>[
        ClipOval(
          child: Image(
            image: AssetImage(
              data['imageURL'],
            ),
            width: 70,
            height: 70,
          ),
        ),
        Text(data['name']),
      ],
    );
  }
}