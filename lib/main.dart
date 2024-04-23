import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/screens/login_page.dart';
// import 'package:firebase_core/firebase_core.dart'; //Target of URI doesnot exist
// import 'firebase_options.dart'; // Target of URI doesnot exist

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Tambahkan baris ini
  // await Firebase.initializeApp( //undifiend name 'Firebase'
  //   options: DefaultFirebaseOptions.currentPlatform, //undifiend name 'DefaultFirebaseOptions'
  // );
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
