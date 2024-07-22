import 'package:flutter/material.dart';

class ToDoColor {
  final int colorIndex;

  static const List<Color> predefinedColors = [
    Colors.red,
    Colors.blueGrey,
    Colors.yellow,
    Colors.green,
    Colors.orange,
    Colors.purple
  ];

  ToDoColor({required this.colorIndex});
}
