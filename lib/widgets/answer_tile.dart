import 'package:flutter/material.dart';

class AnswerTile extends StatelessWidget {
  final String answer;

  const AnswerTile({super.key, required this.answer});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      height: 200.0,
      child: Card(
        elevation: 10,
        color: Colors.amberAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              answer,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
