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
      appBar: AppBar(
        title: const Text('First Screen'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        width: double.infinity,
        height: 100,
        // color: Colors.amber,
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(
            color: Colors.blue,
            width: 4,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(50),
              spreadRadius: 2,
              blurRadius: 15,
              offset: Offset(0, 5), // Bayangan jatuh ke bawah sejauh 5 pixel
            ),
          ],
        ),
        padding: EdgeInsets.fromLTRB(10, 20, 10, 5),
        margin: EdgeInsets.all(30),
        child: Text("Kotak ini memenuhi lebar layar!"),
      ),
    );
  }
}
