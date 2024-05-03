import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'nota': 3},
        {'texto': 'Vermelho', 'nota': 5},
        {'texto': 'Verde', 'nota': 10}, // 30
        {'texto': 'Branco', 'nota': 5},
        {'texto': 'Roxo', 'nota': 7}
      ],
    },
    {
      'texto': 'Qual o seu animal favorito?',
      'respostas': [
		{'texto': 'Coelho', 'nota': 3}, 
		{'texto': 'Cobra', 'nota': 5}, 
		{'texto': 'Gato', 'nota': 10}, // 30
		{'texto': 'Cachorro', 'nota': 5}, 
		{'texto': 'Camelo', 'nota': 7}
		],
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

    bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: const Text('Perguntas'),
                backgroundColor: const Color.fromARGB(255, 99, 178, 243)),
            body: temPerguntaSelecionada
                ? Questionario(
                    perguntas: _perguntas,
                    perguntaSelecionada: _perguntaSelecionada,
                    quandoResponder: _responder)
                : Resultado()));
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
