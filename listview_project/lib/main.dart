import 'package:flutter/material.dart';
import 'package:listview_project/scrollable_widget/listview_default_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      /// Kamu bisa ganti widget-nya sesuai keinginan.
      // home: const ListViewBuilderWidget(),
      // home: const ListViewDynamicWidget(),
      // home: const ListViewSeparatedWidget(),
      home: const ListViewDefaultWidget(),
    );
  }
}
