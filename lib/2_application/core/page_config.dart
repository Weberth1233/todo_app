import 'package:flutter/material.dart';

class PageConfig {
  final IconData icon;
  final String name;
  final Widget child;

  PageConfig({
    required this.icon,
    required this.name,
    Widget? child,
  }) : child = child ??
            const Placeholder(); //Caso não passe um child ele vai colocar o Placeholder no lugar
}
