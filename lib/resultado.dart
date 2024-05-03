import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Resultado extends StatelessWidget
{
    const Resultado({super.key});

    @override
    Widget build(BuildContext context)
    {
        return Center(
            child: Text(
                'Congratulations!',
                style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal
                )
            )
        );
    }
}
