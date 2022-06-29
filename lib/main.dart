import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

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
            child: RandomWords(),
          ),
        ));
  }
}


class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

