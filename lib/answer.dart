import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final Function selectMandler;
  final String answerText;
  Answer(this.selectMandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectMandler,
        style: ButtonStyle(
          backgroundColor:
            MaterialStateProperty.all(Color.fromARGB(255, 140, 103, 199)),
        ),
      ),
    );
  }
}
