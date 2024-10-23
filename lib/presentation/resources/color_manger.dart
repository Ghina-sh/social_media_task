import 'package:flutter/material.dart';

class ColorManager {
  static const Color white = Color(0xFFFFFFFF);
  static const Color fontBlack = Color(0xFF363636);
  static const Color purpleAccent = Color(0xFF7662B3);
  static const Color black = Color(0xFF05101C);
  static const Color grey = Color(0xFFF1F1F1);
  static const Color transparent = Colors.transparent;
  static LinearGradient backgroundColor = LinearGradient(
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
    colors: [
      black.withOpacity(.9),
      black,
    ],
  );
}
