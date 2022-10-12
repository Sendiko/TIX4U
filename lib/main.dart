import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup name generator',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black
        ),
      ),
      home: const RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestedWords = <WordPair>[];
  final _saved = <WordPair>{};
  final _biggerFont = const TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random word generator"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: _pushedSaved,
              icon: const Icon(Icons.list)
          )
        ],
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, i) {
            if(i.isOdd) return const Divider();

            final index = i ~/ 2;
            if (index >= _suggestedWords.length){
              _suggestedWords.addAll(generateWordPairs().take(10));
            }

            final alreadySaved = _saved.contains(_suggestedWords[index]);
            return ListTile(
              title: Text(
                _suggestedWords[index].asPascalCase,
                style: _biggerFont,
                textAlign: TextAlign.center,
              ),
              trailing: Icon(
                alreadySaved ? Icons.favorite : Icons.favorite_border,
                color: alreadySaved? Colors.red : null,
                semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
              ),
              onTap: (){
                setState(() {
                  if(alreadySaved){
                    _saved.remove(_suggestedWords[index]);
                  } else{
                    _saved.add(_suggestedWords[index]);
                  }
                });
              },
            );
          }
      )
    );
  }

  void _pushedSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) {
          final tiles = _saved.map(
              (pair){
                return ListTile(
                  title: Text(
                      pair.asPascalCase,
                      style: _biggerFont,
                  ),
                );
              }
          );
          final divided = tiles.isNotEmpty
          ? ListTile.divideTiles(
              context: context,
              tiles: tiles
          ).toList() : <Widget>[];
          return Scaffold(
            appBar: AppBar(
              title: const Text('Saved Suggestions'),
            ),
            body: ListView(children: divided,),
          );
        }
      )
    );
  }
}