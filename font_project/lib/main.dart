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
      theme: ThemeData(
        primarySwatch: Colors.blue,

        /// Penambahan parameter [fontFamily] pada [ThemeData] akan mengubah
        /// font-family seluruh teks yang ada di dalam aplikasi.
        fontFamily: 'Oswald',
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: const Center(
        child: Text(
          'Custom Font',
          style: TextStyle(
            /// Penambahan parameter [fontFamily] pada TextStyle akan mengubah
            /// font-family untuk widget [Text] terkait.
            fontFamily: 'Oswald',
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
