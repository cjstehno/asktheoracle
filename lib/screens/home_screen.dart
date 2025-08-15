import 'package:asktheoracle/models/revelation.dart';
import 'package:asktheoracle/oracle.dart';
import 'package:asktheoracle/widgets/answer_tile.dart';
import 'package:asktheoracle/widgets/position_tile.dart';
import 'package:asktheoracle/widgets/symbol_tile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Revelation _results = ask();

  void _incrementCounter() {
    setState(() {
      _results = ask();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.brown,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnswerTile(answer: _results.answer),
            SymbolTile(
              symbolLabel: _results.symbolPrimary,
              symbolMeaning: _results.symbolSecondary,
            ),
            PositionTile(
              positionLabel: _results.positionPrimary,
              positionMeaning: _results.positionSecondary,
            ),
            SizedBox(
              width: 250.0,
              height: 50.0,
              child: Card(
                elevation: 5.0,
                color: Colors.deepPurpleAccent.shade100,
                child: TextButton(
                  onPressed: _incrementCounter,
                  child: Text(
                    "Ask",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: InkWell(
        child: const Text(
          "Inspired by \"Ask the Stars\" by Chris McDowall",
          style: TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic),
        ),
        onTap: () => launchUrlString("https://www.bastionland.com/2020/12/ask-stars-minimal-solo-rpg.html"),
      ),
    );
  }
}
