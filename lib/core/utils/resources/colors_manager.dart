
import 'package:flutter/material.dart';

class ColorsManager {
  static const Color backgroundColor = Color.fromARGB(255, 252, 252, 252);
  static const Color mainColor = Color.fromARGB(255, 255, 130, 151);
  static const Color grey = Colors.grey;
  static const Color white = Colors.white;

  static const MaterialColor primaryColor =  MaterialColor(
    0xFFFF8297,
    <int, Color>{
      50: Color(0xFFFFF5F7),
      100: Color(0xFFFFE3E8),
      200: Color(0xFFFFC0CA),
      300: Color(0xFFFF9CA9),
      400: Color(0xFFFF7B8B),
      500: Color(0xFFFF5A6D),
      600: Color(0xFFFA4C5D),
      700: Color(0xFFF33E4C),
      800: Color(0xFFEB3040),
      900: Color(0xFFD4182B),
    },
  );
}
