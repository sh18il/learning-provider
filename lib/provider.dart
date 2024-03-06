//event--->numbers--->Last item +1-->update the List

import 'package:flutter/material.dart';

class NumbeListProvider extends ChangeNotifier {
  int count = 0;

  void addNumbers() {
    count++;
    notifyListeners();
  }
}
