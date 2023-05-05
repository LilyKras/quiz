import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function restartProgram;
  Result(this.totalScore, this.restartProgram);

  String get resultPhrase {
    var resultText = "You did it wrong";
    if (totalScore == 7) {
      resultText = "You awesome!";
    } else if (totalScore == 5 || totalScore == 4) {
      resultText = "Not anought";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(2),
        child: Column(children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text("Restart"),
            onPressed: restartProgram,
            style: TextButton.styleFrom(foregroundColor: Colors.purple),
          ),
        ]));
  }
}
