import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:newcalculator/Widgets/Calculator_View.dart';
import 'package:typewritertext/typewritertext.dart';

class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  _SplashviewState createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  bool _showTypeWriter = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 700), () {
      setState(() {
        _showTypeWriter = true;
      });

      navigatToHomeview();
    });
  }

  void navigatToHomeview() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const CalculatorView(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          //  end: Alignment.center,
          colors: [
            Color(0xff124559),
            Color(0xffaec3b0),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Lottie.asset(
              'assests/Animation - 1724802694913.json',
              repeat: true,
            ),
            if (_showTypeWriter)
              SizedBox(
                child: TypeWriter.text(
                  'Simple Calculator',
                  style: GoogleFonts.greatVibes(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Color(0xff01161e),
                    ),
                  ),
                  textAlign: TextAlign.center,
                  duration: const Duration(milliseconds: 200),
                ),
              ),
          ],
        ),
      ),
    ));
  }
}
