import 'package:flutter/material.dart';
import 'package:wisatabandung/screen/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
