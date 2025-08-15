import 'package:asktheoracle/widgets/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override Widget build(final BuildContext context) {
    return MaterialApp(
      title: 'Ask the Oracle',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const HomeScreen(title: 'Ask the Oracle'),
    );
  }
}


