import 'package:flutter/material.dart';

class CustomTheme {
  ThemeData get themeData {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Colors.blueGrey,
      brightness: Brightness.dark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
