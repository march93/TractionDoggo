import 'package:rxdart/rxdart.dart';

class ListingsBloc {
  static const List<Map<String, String>> allListings = [
    {
      'name': 'Bane',
      'description': 'Will eat all your Lucky Charms.',
      'imageURL': 'graphics/bane.jpg',
    },
    {
      'name': 'Chewbacca',
      'description': '8 feet tall when fully grown.',
      'imageURL': 'graphics/chewbacca.jpg',
    },
    {
      'name': 'Foxy',
      'description': 'Distant relative of Mia',
      'imageURL': 'graphics/foxy.jpg',
    },
    {
      'name': 'Mia',
      'description': 'Has beef with all the Ryan\'s in the world',
      'imageURL': 'graphics/mia.jpg',
    },
    {
      'name': 'Riley',
      'description': 'Requires athlete level cardio in order to take her for a walk',
      'imageURL': 'graphics/riley.jpg',
    },
    {
      'name': 'Sif',
      'description': 'Looks to be about 90% fluff',
      'imageURL': 'graphics/sif.jpg',
    },
    {
      'name': 'Thor',
      'description': 'Requires attention 24/7.',
      'imageURL': 'graphics/thor.jpg',
    },
    {
      'name': 'Gabe',
      'description': 'Can be persuaded with treats, and only obeys to commands in Portuguese.',
      'imageURL': 'graphics/gabe.png',
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