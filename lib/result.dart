import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Você é top';
    } else if (resultScore <= 12) {
      resultText = 'Você é topzera';
    } else {
      resultText = 'Você é topzasso';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          resultPhase,
          style: TextStyle(fontSize: 36),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: ElevatedButton(
              onPressed: resetHandler, child: Text('Refazer questionário')),
        )
      ],
    );
  }
}
