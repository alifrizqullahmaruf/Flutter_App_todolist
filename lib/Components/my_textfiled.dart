import 'package:flutter/material.dart';

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
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            hintText: hintText,
            fillColor: Colors.grey.shade200,
            filled: true),
      ),
    );
  }
}
