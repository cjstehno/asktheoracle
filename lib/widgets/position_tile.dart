import 'package:flutter/material.dart';

class PositionTile extends StatelessWidget {
  final String positionLabel;
  final String positionMeaning;

  const PositionTile({
    super.key,
    required this.positionLabel,
    required this.positionMeaning,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      height: 150.0,
      child: Card(
        elevation: 10,
        color: Colors.amberAccent.shade100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(positionLabel, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
            Text(positionMeaning, style: TextStyle(fontStyle: FontStyle.italic)),
          ],
        ),
      ),
    );
  }
}
