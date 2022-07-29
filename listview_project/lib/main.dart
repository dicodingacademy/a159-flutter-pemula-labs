import 'package:flutter/material.dart';
import 'package:listview_project/scrollable_widget/listview_default_widget.dart';
import 'package:listview_project/scrollable_widget/listview_builder_widget.dart';
import 'package:listview_project/scrollable_widget/listview_dynamic_widget.dart';
import 'package:listview_project/scrollable_widget/listview_separated_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      /// Kamu bisa ganti widget-nya sesuai keinginan.
      // home: const ListViewBuilderWidget(),
      // home: const ListViewDynamicWidget(),
      // home: const ListViewSeparatedWidget(),
      home: const ListViewDefaultWidget(),
    );
  }
}
