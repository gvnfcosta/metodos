import 'package:flutter/material.dart';

class Metodo {
  //with ChangeNotifier {
  late final String id;
  final String title;
  int itemSelected;

  Metodo({required this.id, required this.title, this.itemSelected = 0});

  void toggleSelected() {
    itemSelected++;
    if (itemSelected == 3) {
      itemSelected = 0;
    }

    //notifyListeners();
  }
}
