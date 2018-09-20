import 'package:flutter/material.dart';


class ExpandedLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded!!'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.yellow),
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.deepOrange),
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.blueAccent),
            ),
          ),
        ],
      ),
    );
  }
}
