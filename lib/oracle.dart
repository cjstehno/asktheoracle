import 'dart:math';

import 'package:asktheoracle/models/revelation.dart';

Revelation ask() {
  final symbol = _symbol();
  final position = _position();
  return Revelation(_answer(), symbol.$1, symbol.$2, position.$1, position.$2);
}

String _answer() {
  final rolled = _roll();
  return rolled.toString();
}

(String, String) _symbol() {
  final rolled = _roll();
  return ("symbol", rolled.toString());
}

(String, String) _position() {
  final rolled = _roll();
  return ("position", rolled.toString());
}

int _roll() {
  return Random().nextInt(12) + 1;
}
