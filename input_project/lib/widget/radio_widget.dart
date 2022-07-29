
import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({Key? key}) : super(key: key);

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio<String>(
            value: 'Dart',
            groupValue: language,
            onChanged: (String? value) {
              setState(() {
                language = value;
                showSnackbar();
              });
            },
          ),
          title: const Text('Dart'),
        ),
        ListTile(
          leading: Radio<String>(
            value: 'Kotlin',
            groupValue: language,
            onChanged: (String? value) {
              setState(() {
                language = value;
                showSnackbar();
              });
            },
          ),
          title: const Text('Kotlin'),
        ),
        ListTile(
          leading: Radio<String>(
            value: 'Swift',
            groupValue: language,
            onChanged: (String? value) {
              setState(() {
                language = value;
                showSnackbar();
              });
            },
          ),
          title: const Text('Swift'),
        ),
      ],
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
