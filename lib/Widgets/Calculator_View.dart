import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SimpleCalculator(
        hideExpression: false,
        theme: CalculatorThemeData(
          borderWidth: 1,
          borderColor: const Color(0xff598392),
          displayColor: const Color.fromARGB(255, 252, 254, 255),
          displayStyle: GoogleFonts.dancingScript(
            textStyle: const TextStyle(
              fontSize: 55,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          numColor: const Color(0xffeff6e0),
          numStyle: GoogleFonts.dancingScript(
            textStyle: const TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.bold,
              color: Color(0xff598392),
            ),
          ),
          operatorColor: const Color(0xffaec3b0),
          operatorStyle: GoogleFonts.kaushanScript(
            textStyle: const TextStyle(
                fontSize: 50, color: Color.fromARGB(255, 17, 1, 1)),
          ),
          commandColor: const Color(0xff598392),
          commandStyle: GoogleFonts.lumanosimo(
            textStyle: const TextStyle(
              fontSize: 50,
              color: Color(0xffeff6e0),
            ),
          ),
          expressionColor: const Color.fromARGB(255, 255, 255, 255),
          expressionStyle: GoogleFonts.dancingScript(
            textStyle: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 248, 3, 3),
            ),
          ),
        ),
      ),
    );
  }
}
