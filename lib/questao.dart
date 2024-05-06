import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Questao extends StatelessWidget {
  final String texto;

  const Questao(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 40),
      child: Text(
        texto,
        style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal),
        textAlign: TextAlign.center,
      ),
    );
  }
}
