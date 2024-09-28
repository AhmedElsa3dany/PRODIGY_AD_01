import 'package:flutter/material.dart';
import 'package:newcalculator/Widgets/SplashView.dart';

void main() {
  runApp(const Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashview(),
    );
  }
}
