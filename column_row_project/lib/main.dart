import 'package:column_row_project/widget/column_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),

      /// Kamu bisa ganti widget-nya sesuai keinginan.
      // home: const RowWidget(),
      home: const ColumnWidget(),
    );
  }
}
