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
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  final textStyle = const TextStyle(fontSize: 16);
  final listIcon = const <Widget>[
    Icon(Icons.share),
    Icon(Icons.thumb_up),
    Icon(Icons.thumb_down),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ///
          Text(
            "${MainAxisAlignment.spaceEvenly}",
            style: textStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: listIcon,
          ),
          const SizedBox(height: 20),

          ///
          Text(
            "${MainAxisAlignment.spaceAround}",
            style: textStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: listIcon,
          ),
          const SizedBox(height: 20),

          ///
          Text(
            "${MainAxisAlignment.spaceBetween}",
            style: textStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: listIcon,
          ),
          const SizedBox(height: 20),

          ///
          Text(
            "${MainAxisAlignment.start}",
            style: textStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: listIcon,
          ),
          const SizedBox(height: 20),

          ///
          Text(
            "${MainAxisAlignment.center}",
            style: textStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: listIcon,
          ),
          const SizedBox(height: 20),

          ///
          Text(
            "${MainAxisAlignment.end}",
            style: textStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: listIcon,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
