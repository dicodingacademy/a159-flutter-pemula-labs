import 'package:column_row_project/widget/column_widget.dart';
import 'package:flutter/material.dart';

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
      // home: const RowWidget(),
      home: const ColumnWidget(),
    );
  }
}
