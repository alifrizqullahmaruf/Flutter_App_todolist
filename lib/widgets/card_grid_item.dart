import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/models/list.dart';

class CardGridItems extends StatelessWidget {
  const CardGridItems({
    super.key,
    required this.listItem,
  });

  final ListItem listItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
                listItem.color.withOpacity(0.5),
                listItem.color.withOpacity(0.9),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              listItem.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white30,
              ),
              child: Text(
                listItem.priority.toString(),
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
