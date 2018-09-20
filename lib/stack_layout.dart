import 'package:flutter/material.dart';
import 'package:layout_training/icon_list.dart';

const double _iconSize = 60.0;

Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(title: const Text('Stack Layout')),
      body: LayoutBuilder(
        builder: (context, constrains) =>
            Stack(fit: StackFit.expand, children: <Widget>[
              Material(color: Colors.blueAccent),
              Material(color: Colors.redAccent),
              Positioned(
                  top: constrains.minHeight,
                  child: Row(
                      children: getIcons(
                          type: Icons.alarm, quantity: 5, size: _iconSize))),
              Positioned(
                top: constrains.minHeight,
                left: constrains.maxWidth - _iconSize * 4,
                child: Column(
                  children: getIcons(type: Icons.cake, quantity: 5),
                ),
              ),
            ]),
      ));
}
