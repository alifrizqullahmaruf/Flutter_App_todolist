import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/models/list.dart';

final List<ListItem> availableList = [
  ListItem(
    title: 'Beli Bahan Makanan',
    priority: Priority.Tinggi,
    deadline: DateTime.now().add(const Duration(days: 1)),
    note: 'Beli bahan makanan untuk persiapan makan malam.',
    color: Colors.red,
  ),
  ListItem(
    title: 'Rapat Proyek',
    priority: Priority.Sedang,
    deadline: DateTime.now().add(const Duration(days: 2)),
    note: 'Rapat proyek dengan tim pukul 10 pagi.',
    color: Colors.orange,
  ),
  ListItem(
    title: 'Bayar Tagihan Listrik',
    priority: Priority.Rendah,
    deadline: DateTime.now().add(const Duration(days: 5)),
    note: 'Bayar tagihan listrik sebelum tanggal jatuh tempo.',
    color: Colors.green,
  ),
  ListItem(
    title: 'Olahraga',
    priority: Priority.Tinggi,
    deadline: DateTime.now().add(const Duration(days: 1)),
    note: 'Melakukan olahraga rutin untuk menjaga kesehatan.',
    color: Colors.red,
  ),
  ListItem(
    title: 'Pulang ke Rumah',
    priority: Priority.Sedang,
    deadline: DateTime.now().add(const Duration(days: 3)),
    note: 'Pulang ke rumah untuk menghadiri acara keluarga.',
    color: Colors.orange,
  ),
  ListItem(
    title: 'Buat Laporan Keuangan',
    priority: Priority.Tinggi,
    deadline: DateTime.now().add(const Duration(days: 2)),
    note: 'Buat laporan keuangan bulanan untuk perusahaan.',
    color: Colors.red,
  ),
  ListItem(
    title: 'Bersihkan Rumah',
    priority: Priority.Rendah,
    deadline: DateTime.now().add(const Duration(days: 4)),
    note: 'Lakukan pembersihan rumah secara menyeluruh.',
    color: Colors.green,
  ),
  ListItem(
    title: 'Buat Presentasi',
    priority: Priority.Sedang,
    deadline: DateTime.now().add(const Duration(days: 1)),
    note: 'Persiapkan presentasi untuk rapat besok pagi.',
    color: Colors.orange,
  ),
];
