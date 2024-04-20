import 'package:flutter/material.dart';

class HeadlineThree extends StatelessWidget {
  final String text;
  final Color colorText;

  const HeadlineThree({super.key, required this.text,required this.colorText});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: colorText),
    );
  }
}
