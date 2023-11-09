import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

TextStyle textStyle(double size, Color color, FontWeight weight) {
  return TextStyle(
    fontSize: size,
    color: color,
    fontWeight: weight,
  );
}
