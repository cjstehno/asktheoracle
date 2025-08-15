import 'dart:math';

import 'package:asktheoracle/models/revelation.dart';

// https://www.bastionland.com/2020/12/ask-stars-minimal-solo-rpg.html

Revelation ask() {
  final symbol = _symbol();
  final position = _position();
  return Revelation(_answer(), symbol.$1, symbol.$2, position.$1, position.$2);
}

String _answer() {
  final rolled = _roll();
  if (rolled <= 3) {
    return "Hard No";
  } else if (rolled > 3 && rolled <= 6) {
    return "No";
  } else if (rolled > 6 && rolled <= 9) {
    return "Yes";
  } else {
    return "Hard Yes";
  }
}

const List<(String, String)> _symbols = [
  ("The Fang", "(hostility/fear)"),
  ("The Wings", "(freedom/nature)"),
  ("The Cage", "(protection/obligation)"),
  ("The Hand", "(creation/misdirection)"),
  ("The Mask", "(persuasion/shame)"),
  ("The Eye", "(judgement/secrets)"),
  ("The Child", "(learning/greed)"),
  ("The Traveller", "(wandering/chance)"),
  ("The Elder", "(authority/tradition)"),
  ("The Fleet", "(direction/struggle)"),
  ("The Council", "(opposition/cycles)"),
  ("The Legion", "(unification/identity)"),
];

const List<(String, String)> _positions = [
  ("Rising", "(growth/possibility)"),
  ("Entombed", "(memory/death)"),
  ("Twinned", "(intimacy/dependency)"),
  ("Waning", "(hunger/decay)"),
  ("Rooted", "(stability/plenty)"),
  ("Bowed", "(submission/mercy)"),
  ("Colliding", "(change/violence)"),
  ("Burning", "(honesty/pride)"),
  ("Veiled", "(faith/deceit)"),
  ("Exiled", "(guilt/autonomy)"),
  ("Crowned", "(ambition/ruin)"),
  ("Reflected", "(reversal/vanity)"),
];

(String, String) _symbol() {
  final rolled = _roll();
  return _symbols[rolled - 1];
}

(String, String) _position() {
  final rolled = _roll();
  return _positions[rolled - 1];
}

int _roll() {
  return Random().nextInt(12) + 1;
}
