import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/widgets/headline_two.dart';

class CardProfile extends StatelessWidget {
  final String textHeadline;
  final String textData;

  const CardProfile({
    super.key,
    required this.textHeadline,
    required this.textData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          HeadlineTwo(text: textHeadline, colorText: Colors.black),
          const SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                textData,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
