import 'package:flutter/material.dart';

class SymbolTile extends StatelessWidget {
  final String symbolLabel;
  final String symbolMeaning;

  const SymbolTile({
    super.key,
    required this.symbolLabel,
    required this.symbolMeaning,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      height: 150.0,
      child: Card(
        elevation: 10,
        color: Colors.cyan,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(symbolLabel, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
            Text(symbolMeaning, style: TextStyle(fontStyle: FontStyle.italic)),
          ],
        ),
      ),
    );
  }
}
