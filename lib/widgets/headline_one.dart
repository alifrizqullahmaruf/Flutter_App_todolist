import 'package:flutter/material.dart';

class HeadlineOne extends StatelessWidget {
  final String text;
  final Color colorText;

  const HeadlineOne({super.key, required this.text,required this.colorText});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w700, color: colorText),
    );
  }
}
