import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/data/my_color.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: MyColor.color30,
      ),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
