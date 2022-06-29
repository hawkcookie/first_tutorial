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
    final suggestions = <WordPair>[];
    const biggerFont = TextStyle(fontSize: 18);
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: 30,
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();
        final index = i ~/ 2;
        if (index >= suggestions.length) {
          debugPrint('=================$index==============');
          debugPrint('=================${generateWordPairs().take(10)}==============');
          suggestions.addAll(generateWordPairs().take(10));
        }
        return ListTile(
            title: Text(
          suggestions[index].asPascalCase,
          style: biggerFont,
        ));
      },
    );
  }
}
