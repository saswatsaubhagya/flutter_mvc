import 'package:flutter/foundation.dart';

class CounterController extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void incrementCounter() {
    _counter = _counter + 2;
    notifyListeners();
  }
}
