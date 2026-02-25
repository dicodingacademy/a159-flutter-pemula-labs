import 'package:flutter/material.dart';

class ListViewDynamicWidget extends StatelessWidget {
  const ListViewDynamicWidget({super.key});
  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (final number in numberList)
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text(
                  '$number', // Ditampilkan sesuai item
                  style: const TextStyle(fontSize: 50),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
