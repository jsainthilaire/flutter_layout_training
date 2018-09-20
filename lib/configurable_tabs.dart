import 'package:flutter/material.dart';

class ConfigurableTabs extends StatelessWidget {
  final List<Widget> tabsContent;
  final String title;
  final double width;
  final double height;
  final List<Widget> tabHeaders;

  ConfigurableTabs(
      {this.tabsContent, this.tabHeaders, this.title, this.width, this.height})
      : assert(tabsContent.length == tabHeaders.length);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabHeaders.length,
      child: Scaffold(
        appBar: AppBar(
            title: Text(title),
            bottom: TabBar(
              tabs: tabHeaders,
            )),
        body: Container(
          color: Colors.red,
          height: height,
          width: width,
          child: TabBarView(
            children: tabsContent,
          ),
        ),
      ),
    );
  }
}
