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
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),

      /// Kamu bisa gunakan widget [Container] untuk membuat
      /// [padding]. Akan tetapi, widget [Container] ini merupakan
      /// widget high-level yang memiliki parameter yang lengkap.
      /// Apabila hanya ingin menampilkan padding antar widget,
      /// kamu bisa gunakan widget [Padding].
      ///
      /// Widget [Padding] khusus untuk memberikan padding pada
      /// suatu widget.
      body: const Padding(
        padding: EdgeInsets.all(30),
        child: Text('Ini Padding'),
      ),
    );
  }
}
