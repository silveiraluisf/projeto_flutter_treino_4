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
      'answers': [
        {'text': 'Azul', 'score': 5},
        {'text': 'Vermelho', 'score': 5},
        {'text': 'Verde', 'score': 7},
        {'text': 'Amarelo', 'score': 9},
      ],
    },
    {
      'questionText': 'Qual o seu animal favorito?',
      'answers': [
        {'text': 'Tigre', 'score': 3},
        {'text': 'Capivara', 'score': 5},
        {'text': 'Unicórnio', 'score': 8},
        {'text': 'Passarinho', 'score': 4},
      ],
    },
    {
      'questionText': 'Qual o seu carro favorito?',
      'answers': [
        {'text': 'Uno', 'score': 3},
        {'text': 'Gol', 'score': 5},
        {'text': 'Ipanema', 'score': 8},
        {'text': 'Escort', 'score': 4},
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
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
                : Result(_totalScore, resetQuiz)),
      ),
    );
  }
}
