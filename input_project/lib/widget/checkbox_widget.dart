import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  final List<HobbyItem> _hobbies = [
    const HobbyItem(title: 'Reading'),
    const HobbyItem(title: 'Traveling'),
    const HobbyItem(title: 'Coding'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Select Your Hobbies:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        ..._hobbies.map((hobby) {
          return ListTile(
            title: Text(hobby.title),
            leading: Checkbox(
              value: hobby.isChecked,
              onChanged: (bool? value) {
                setState(() {
                  final index = _hobbies.indexOf(hobby);
                  _hobbies[index] = hobby.copyWith(isChecked: value ?? false);
                });
                showSnackbar();
              },
            ),
          );
        }),
      ],
    );
  }

  void showSnackbar() {
    final message = _hobbies
        .where((hobby) => hobby.isChecked)
        .map((hobby) => hobby.title)
        .join(', ');
    final text = message.isEmpty
        ? 'No hobbies selected'
        : 'Selected hobbies: $message';
    final scaffoldMessager = ScaffoldMessenger.of(context);
    scaffoldMessager
      ..clearSnackBars()
      ..showSnackBar(SnackBar(content: Text(text)));
  }
}

class HobbyItem {
  final String title;
  final bool isChecked;

  const HobbyItem({required this.title, this.isChecked = false});

  HobbyItem copyWith({String? title, bool? isChecked}) {
    return HobbyItem(
      title: title ?? this.title,
      isChecked: isChecked ?? this.isChecked,
    );
  }
}
