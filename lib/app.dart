import 'package:counter_app/config/theme/theme.dart';
import 'package:counter_app/modules/counter/screens/counter_screen.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().themeData,
      home: const CounterScreen(),
    );
  }
}
