import 'package:rxdart/rxdart.dart';

enum ScreenPages {
  updates,
  listings,
  people
}

class ScreenBloc {
  final _currentScreen = BehaviorSubject<ScreenPages>(seedValue: ScreenPages.updates);

  // Add data to stream
  Stream<ScreenPages> get currentScreen => _currentScreen.stream;

  // Change data
  Function(ScreenPages) get changeScreen => _currentScreen.sink.add;

  dispose() {
    _currentScreen.close();
  }
}