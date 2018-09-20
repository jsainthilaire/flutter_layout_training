import 'package:flutter/material.dart';

import 'package:layout_training/icon_list.dart';
import 'package:layout_training/configurable_tabs.dart';

double _width = 60.0;

class ColumnLayout extends StatelessWidget {
  final List<String> header = ['Start', 'Center', 'End', 'Space Between'];

  Widget _getColumnsWithMainAxis(MainAxisAlignment mainAxis) {
    return Column(
      mainAxisAlignment: mainAxis,
      children: getIcons(),
    );
  }

  List<Widget> _getHeaders() {
    return header.map((title) => Tab(text: title)).toList();
  }

  List<Widget> _getColumns() {
    return <Widget>[
      _getColumnsWithMainAxis(MainAxisAlignment.start),
      _getColumnsWithMainAxis(MainAxisAlignment.center),
      _getColumnsWithMainAxis(MainAxisAlignment.end),
      _getColumnsWithMainAxis(MainAxisAlignment.spaceBetween),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ConfigurableTabs(
        tabsContent: _getColumns(),
        title: 'Column Example',
        width: _width,
        tabHeaders: _getHeaders());
  }
}
