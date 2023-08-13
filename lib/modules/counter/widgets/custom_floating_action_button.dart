import 'package:flutter/material.dart';

class CustomFloattingActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomFloattingActionButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
