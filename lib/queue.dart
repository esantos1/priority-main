import 'package:priority/alert_messenger.dart';

class AlertQueue {
  final List<Alert> _elements = [];

  void enqueue(Alert element) => _elements.add(element);

  Alert? dequeue() {
    if (_elements.isEmpty) {
      return null;
    } else {
      return _elements.removeAt(0);
    }
  }

  Alert? peek() {
    if (_elements.isEmpty) {
      return null;
    } else {
      return _elements.first;
    }
  }

  bool isEmpty() => _elements.isEmpty;

  bool isNotEmpty() => _elements.isNotEmpty;

  void clear() => _elements.clear();

  int get length => _elements.length;
}
