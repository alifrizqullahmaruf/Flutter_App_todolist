import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/data/my_color.dart';

class MyTextFiled extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;

  const MyTextFiled({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
            border: InputBorder.none,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: MyColor.color60),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyColor.color60),
            ),
            hintText: hintText,
            fillColor: MyColor.color30,
            filled: true),
      ),
    );
  }
}
