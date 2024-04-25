// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {

	var perguntaSelecionada = 0;

	void responder() {
		perguntaSelecionada++;
		print(perguntaSelecionada);
	}

	@override
	Widget build(BuildContext context) {
		final perguntas = [
		'Qual a sua cor favorita?',
		'Qual o seu animal favorito?',
		];

	return MaterialApp(
		home: Scaffold(
			appBar: AppBar(
				title: Text('Perguntas'),
				backgroundColor: Color.fromRGBO(0, 0, 0, 0.5),
				),
				body: Column(
				  children: <Widget>[
				    Text(perguntas[perguntaSelecionada]),
					ElevatedButton(
						child: Text('RESPOSTA 1'),
						onPressed: responder,
					),
					ElevatedButton(
						child: Text('RESPOSTA 2'),
						onPressed: responder,
					),
					ElevatedButton(
						child: Text('RESPOSTA 3'),
						onPressed: responder,
					),
				  ],
				),
			),
	);
	}
}