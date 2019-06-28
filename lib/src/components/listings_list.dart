import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tractiondoggo/src/blocs/listingsBloc.dart';
import 'package:tractiondoggo/src/components/null_screen.dart';

class ListingsList extends StatelessWidget {
  Widget build(BuildContext context) {
    final listingsBloc = Provider.of<ListingsBloc>(context);

    return StreamBuilder<List<Map<String, String>>> (
      stream: listingsBloc.getListings,
      builder: (context, snapshot) {
        print(snapshot.data);
        if (!snapshot.hasData) {
          return NullScreen(content: 'No Listings Available',);
        }

        return ListView(
          
        );
      }
    );
  }
}