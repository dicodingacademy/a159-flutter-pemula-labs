import 'package:flutter/material.dart';
import 'package:responsive_project/widgets/mediaquery_page.dart';

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
      // home: const LayoutBuilderPage(),
      // home: const ResponsivePage(),
      home: const MediaQueryPage(),
    );
  }
}
