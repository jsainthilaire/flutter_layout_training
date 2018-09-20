import 'package:flutter/material.dart';

import 'package:layout_training/utils.dart';

final _menuItemHeight = 80.0;
final _menuItemBorderRadius = BorderRadius.circular(_menuItemHeight / 2);

class LayoutMenu extends StatelessWidget {
  final _menuItems = <String>['column', 'row', 'stack', 'expanded'];

  Widget _getMenuList(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
          MenuItem(name: _menuItems[index]),
      itemCount: _menuItems.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Layout')
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: _getMenuList(context),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String name;

  MenuItem({this.name});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _menuItemHeight,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, name);
          },
          highlightColor: Theme.of(context).accentColor,
          splashColor: Theme.of(context).accentColor,
          borderRadius: _menuItemBorderRadius,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                capitalize(name),
                style: Theme.of(context).textTheme.headline,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
