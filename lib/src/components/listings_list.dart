import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tractiondoggo/src/blocs/listingsBloc.dart';
import 'package:tractiondoggo/src/components/listings_list_tile.dart';
import 'package:tractiondoggo/src/components/null_screen.dart';

class ListingsList extends StatelessWidget {
  Widget build(BuildContext context) {
    final listingsBloc = Provider.of<ListingsBloc>(context);

    return StreamBuilder<List<Map<String, String>>> (
      stream: listingsBloc.getListings,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return NullScreen(content: 'No Listings Available',);
        }

        return _buildList(context, snapshot);
      }
    );
  }

  Widget _buildList(BuildContext context, AsyncSnapshot<List<Map<String, String>>> snapshot) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: snapshot.data.length,
      itemBuilder: (context, index) {
        return ListingsListTile(data: snapshot.data[index]);
      },
    );
  }
}