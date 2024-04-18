import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  const BigCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.orange),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Go premium",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Text("Get unlimited acces to all our features",
                style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
