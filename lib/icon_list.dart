import 'package:flutter/material.dart';

const double _iconSize = 60.0;

List<Widget> getIcons({IconData type = Icons.star, int quantity = 3, double size = _iconSize}) {
  return List.generate(quantity, (index) => Icon(type, size: _iconSize));
}
