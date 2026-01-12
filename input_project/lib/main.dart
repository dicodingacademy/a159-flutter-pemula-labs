import 'package:flutter/material.dart';

import 'widget/checkbox_widget.dart';
import 'widget/radio_widget.dart';
import 'widget/switch_widget.dart';
import 'widget/textfield_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFieldWidget(),
            SizedBox(height: 20),
            SwitchWidget(),
            SizedBox(height: 20),
            RadioWidget(),
            SizedBox(height: 20),
            CheckboxWidget(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
