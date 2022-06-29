import 'package:flutter/material.dart';

void main() {
  runApp(const FirstTutorial());
}

class FirstTutorial extends StatelessWidget {
  const FirstTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to flutter',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to flutter'),
          ),
          body: const Center(
            child: Text('Hello World'),
          ),
        ));
  }
}
