import 'package:flutter/material.dart';

import 'package:layout_training/layout_menu.dart';
import 'package:layout_training/column_layout.dart';
import 'package:layout_training/row_layout.dart';
import 'package:layout_training/stack_layout.dart' as StackLayout;
import 'package:layout_training/expanded_layout.dart';

void main() => runApp(LayoutTest());

final routes = {
  '/': (BuildContext context) => LayoutMenu(),
  'column': (BuildContext context) => ColumnLayout(),
  'row': (BuildContext context) => RowLayout(),
  'stack': (BuildContext context) => StackLayout.build(context),
  'expanded': (BuildContext context) => ExpandedLayout(),// Just to test this can be done
};

class LayoutTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Training',
      initialRoute: '/',
      routes: routes,
    );
  }
}
