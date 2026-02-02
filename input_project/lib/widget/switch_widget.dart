import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isLightMode = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(isLightMode ? 'Light Mode' : 'Dark Mode'),
      leading: Icon(isLightMode ? Icons.wb_sunny : Icons.nights_stay),
      trailing: Switch(
        value: isLightMode,
        onChanged: (bool value) {
          setState(() {
            isLightMode = value;
          });
        },
      ),
    );
  }
}
