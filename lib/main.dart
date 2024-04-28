import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/screens/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Tambahkan baris ini
  await Firebase.initializeApp(); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Perbaiki konstruktor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
