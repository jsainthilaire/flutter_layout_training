import 'package:flutter/material.dart';

import 'package:layout_training/icon_list.dart';
import 'package:layout_training/configurable_tabs.dart';

double _height = 60.0;

class RowLayout extends StatelessWidget {
  final List<String> header = ['Start', 'Center', 'End', 'Space Between'];

  List<Widget> _getHeaders() {
    return header.map((title) => Tab(text: title)).toList();
  }

  Widget _getRowsWithMainAxis(MainAxisAlignment mainAxis) {
    return Row(
      mainAxisAlignment: mainAxis,
      children: getIcons(),
    );
  }

  List<Widget> _getRows() {
    return [
      _getRowsWithMainAxis(MainAxisAlignment.start),
      _getRowsWithMainAxis(MainAxisAlignment.center),
      _getRowsWithMainAxis(MainAxisAlignment.end),
      _getRowsWithMainAxis(MainAxisAlignment.spaceAround),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ConfigurableTabs(
      tabsContent: _getRows(),
      tabHeaders: _getHeaders(),
      title: 'Row Examples',
      height: _height,
    );
  }
}
