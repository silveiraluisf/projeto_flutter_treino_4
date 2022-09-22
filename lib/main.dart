import 'package:flutter/material.dart';
import 'package:projeto_flutter_treino_4/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Qual a sua cor favorita?', 'Qual o seu animal favorito?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Questionário',
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Question(questions[_questionIndex]),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    answerQuestion();
                    print('Resposta 1 escolhida!');
                  },
                  child: Text('Resposta 1'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('Resposta 2 escolhida!');
                  },
                  child: Text('Resposta 2'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('Resposta 3 escolhida!');
                  },
                  child: Text('Resposta 3'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
