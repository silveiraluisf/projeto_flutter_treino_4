import 'package:flutter/material.dart';
import 'package:projeto_flutter_treino_4/answer.dart';
import 'package:projeto_flutter_treino_4/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'Qual a sua cor favorita?',
        'answers': ['Azul', 'Vermelho', 'Verde', 'Amarelo'],
      },
      {
        'questionText': 'Qual o seu animal favorito?',
        'answers': ['Tigre', 'Capivara', 'Unicórnio', 'Passarinho'],
      },
      {
        'questionText': 'Qual o seu carro favorito?',
        'answers': ['Uno', 'Gol', 'Ipanema', 'Escort'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Questionário',
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Question(
                  questions[_questionIndex]['questionText'],
                ),
              ),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          ),
        ),
      ),
    );
  }
}
