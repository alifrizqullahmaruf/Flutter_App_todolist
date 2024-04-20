import 'package:flutter/material.dart';

class HeadlineTwo extends StatelessWidget {
  final String text;
  final Color colorText;

  const HeadlineTwo({super.key, required this.text,required this.colorText});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w500, color: colorText),
    );
  }
}
