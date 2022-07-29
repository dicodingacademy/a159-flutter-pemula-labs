import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final TextEditingController _controller = TextEditingController();
  String? _name = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
            hintText: 'Write your name here...',
            labelText: 'Your Name',
          ),
          onChanged: (String value) {
            print("Updated : $value");
          },
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          child: const Text('Submit'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text('Hello, ${_controller.text}'),
                );
              },
            );
          },
        )
      ],
    );
  }
}
