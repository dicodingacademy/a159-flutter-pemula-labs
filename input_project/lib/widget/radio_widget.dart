import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return RadioGroup<String>(
      groupValue: language,
      onChanged: (String? value) {
        setState(() {
          language = value;
          showSnackbar();
        });
      },
      child: const Column(
        children: [
          ListTile(
            leading: Radio<String>(value: 'Dart'),
            title: Text('Dart'),
          ),
          ListTile(
            leading: Radio<String>(value: 'Kotlin'),
            title: Text('Kotlin'),
          ),
          ListTile(
            leading: Radio<String>(value: 'Swift'),
            title: Text('Swift'),
          ),
        ],
      ),
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$language selected'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
