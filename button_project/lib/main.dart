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

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            /// Elevated Button
            ElevatedButton(
              child: const Text("Elevated Button"),
              onPressed: () {
                // Aksi ketika button diklik
              },
            ),

            /// FilledButton Button
            FilledButton(
              child: const Text("Filled Button"),
              onPressed: () {
                // Aksi ketika button diklik
              },
            ),

            /// Text Button
            TextButton(
              child: const Text('Text Button'),
              onPressed: () {
                // Aksi ketika button diklik
              },
            ),

            /// Outlined Button
            OutlinedButton(
              child: const Text('Outlined Button'),
              onPressed: () {
                // Aksi ketika button diklik
              },
            ),

            /// Icon Button
            IconButton(
              icon: const Icon(Icons.volume_up),
              tooltip: 'Increase volume by 10',
              onPressed: () {
                // Aksi ketika button diklik
              },
            ),

            /// Dropdown Button
            DropdownButton<String>(
              items: const <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(value: 'Dart', child: Text('Dart')),
                DropdownMenuItem<String>(
                  value: 'Kotlin',
                  child: Text('Kotlin'),
                ),
                DropdownMenuItem<String>(value: 'Swift', child: Text('Swift')),
              ],
              value: language,
              hint: const Text('Select Language'),
              onChanged: (String? value) {
                setState(() {
                  language = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
