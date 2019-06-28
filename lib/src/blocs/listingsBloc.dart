import 'package:rxdart/rxdart.dart';

class ListingsBloc {
  static const List<Map<String, String>> allListings = [
    {
      'name': 'Bane',
      'description': 'Will eat all your Lucky Charms.',
      'imageURL': 'assets/images/bane.jpg',
    },
    {
      'name': 'Chewbacca',
      'description': '8 feet tall when fully grown.',
      'imageURL': 'assets/images/chewbacca.jpg',
    },
    {
      'name': 'Foxy',
      'description': 'Distant relative of Mia',
      'imageURL': 'assets/images/foxy.jpg',
    },
    {
      'name': 'Mia',
      'description': 'Has beef with all the Ryan\'s in the world',
      'imageURL': 'assets/images/mia.jpg',
    },
    {
      'name': 'Riley',
      'description': 'Requires athlete level cardio in order to take her for a walk',
      'imageURL': 'assets/images/riley.jpg',
    },
    {
      'name': 'Sif',
      'description': 'Looks to be about 90% fluff',
      'imageURL': 'assets/images/sif.jpg',
    },
    {
      'name': 'Thor',
      'description': 'Requires attention 24/7.',
      'imageURL': 'assets/images/thor.jpg',
    },
    {
      'name': 'Gabe',
      'description': 'Can be persuaded with treats, and only obeys to commands in Portuguese.',
      'imageURL': 'assets/images/gabe.png',
    },
  ];

  final _listings = BehaviorSubject<List<Map<String, String>>>(seedValue: allListings);

  // Add data to stream
  Stream<List<Map<String, String>>> get getListings => _listings.stream;

  // Change data
  Function(List<Map<String, String>>) get addListings => _listings.sink.add;

  dispose() {
    _listings.close();
  }
}