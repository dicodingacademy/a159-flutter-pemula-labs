import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({Key? key}) : super(key: key);

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: agree,
        onChanged: (bool? value) {
          setState(() {
            agree = value!;
          });

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(agree ? "Agree" : "Disagree"),
              duration: const Duration(seconds: 1),
            ),
          );
        },
      ),
      title: const Text('Agree / Disagree'),
    );
  }
}