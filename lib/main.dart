import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                child: Text('Essa é uma pergunta?',
                    style: TextStyle(fontSize: 24)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
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
