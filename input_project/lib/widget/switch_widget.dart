
import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Switch(
        value: lightOn,
        onChanged: (bool value) {
          setState(() {
            lightOn = value;
          });

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(lightOn ? 'Light On' : 'Light Off'),
              duration: const Duration(seconds: 1),
            ),
          );
        },
      ),
      title: Text(lightOn ? "Turn Off" : "Turn On"),
    );
  }
}
