import 'package:flutter/material.dart';

class RainbowWidget extends StatelessWidget {
  const RainbowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(child: Container(color: Colors.red)),
          Expanded(child: Container(color: Colors.orange)),
          Expanded(child: Container(color: Colors.yellow)),
          Expanded(child: Container(color: Colors.green)),
          Expanded(flex: 2, child: Container(color: Colors.blue)),
          Expanded(child: Container(color: Colors.indigo)),
          Expanded(child: Container(color: Colors.purple)),
        ],
      ),
    );
  }
}
