import 'package:asktheoracle/models/revelation.dart';
import 'package:asktheoracle/oracle.dart';
import 'package:asktheoracle/widgets/answer_tile.dart';
import 'package:asktheoracle/widgets/position_tile.dart';
import 'package:asktheoracle/widgets/symbol_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Revelation _results = new Revelation("-", "-", "-", "-", "-");

  void _incrementCounter() {
    setState(() {
      _results = ask();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnswerTile(answer: _results.answer),
            SymbolTile(symbolLabel: _results.symbolPrimary, symbolMeaning: _results.symbolSecondary),
            PositionTile(positionLabel: _results.positionPrimary, positionMeaning: _results.positionSecondary),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
