import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  final textStyle = const TextStyle(fontSize: 16);
  final listIcon = const <Widget>[
    Icon(Icons.share),
    Icon(Icons.thumb_up),
    Icon(Icons.thumb_down),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: const Column(
        children: <Widget>[
          Text(
            'Sebuah Judul',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text('Lorem ipsum dolor sit amet'),
        ],
      ),
    );
  }
}
