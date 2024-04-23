import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/data/my_color.dart';

class MyButtonOutline extends StatelessWidget {
  // TextButton
  final TextButton;
  final Function()? onTap;

  const MyButtonOutline(
      {super.key, required this.TextButton, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: MyColor.color10, width: 3),
              ),
              child: Center(
                child: Text(
                  TextButton,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: MyColor.color10,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
