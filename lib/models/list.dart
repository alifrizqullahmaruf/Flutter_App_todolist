import 'package:flutter/material.dart';

enum Priority {
  Tinggi,
  Sedang,
  Rendah,
}

class ListItem {
  const ListItem({
    required this.title,
    required this.priority,
    required this.deadline,
    required this.note,
    required this.color, // Tambahkan required di sini
  });

  final String title;
  final Priority priority;
  final DateTime deadline;
  final String note;
  final Color color; // Tambahkan properti color
}
