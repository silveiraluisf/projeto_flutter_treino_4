import 'package:flutter/material.dart';
import 'package:projeto_flutter_treino_4/quiz.dart';
import 'package:projeto_flutter_treino_4/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
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

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Questionário',
          ),
        ),
        body: Center(
            child: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result()),
      ),
    );
  }
}
