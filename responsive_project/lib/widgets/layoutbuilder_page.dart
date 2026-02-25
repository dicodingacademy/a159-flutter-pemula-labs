import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final screenWidth = size.width;

    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final constraintsWidth = constraints.maxWidth.toStringAsFixed(
                  0,
                );
                return ColoredBox(
                  color: Colors.blueGrey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'MediaQuery: $screenWidth',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'LayoutBuilder: $constraintsWidth',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (context, constraints) {
                final constraintsWidth = constraints.maxWidth.toStringAsFixed(
                  0,
                );
                return ColoredBox(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'MediaQuery: $screenWidth',
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'LayoutBuilder: $constraintsWidth',
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
