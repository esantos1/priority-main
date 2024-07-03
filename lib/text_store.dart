import 'package:flutter/material.dart';
import 'package:priority/text_messages.dart';

class TextStore extends ValueNotifier {
  TextStore(super.value);

  String error = '';
  String text = TextMessages.defaultMessage;

  void setCenterText(String newText) async {
    error = '';
    notifyListeners();

    try {
      text = newText;
      error = '';
      notifyListeners();
    } catch (e) {
      error = e.toString().replaceAll('Exception: ', '');
      notifyListeners();
    } finally {
      notifyListeners();
    }
  }
}
