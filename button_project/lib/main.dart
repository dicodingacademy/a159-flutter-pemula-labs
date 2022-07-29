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

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            /// Elevated Button
            ElevatedButton(
              child: const Text("Tombol"),
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
                DropdownMenuItem<String>(
                  value: 'Dart',
                  child: Text('Dart'),
                ),
                DropdownMenuItem<String>(
                  value: 'Kotlin',
                  child: Text('Kotlin'),
                ),
                DropdownMenuItem<String>(
                  value: 'Swift',
                  child: Text('Swift'),
                ),
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
