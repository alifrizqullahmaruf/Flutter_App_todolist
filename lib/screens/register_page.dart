import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/data/my_color.dart';
import 'package:project01_riz_todolist/screens/bottom_navbar.dart';
import 'package:project01_riz_todolist/screens/home_page.dart';
import 'package:project01_riz_todolist/widgets/headline_one.dart';
import 'package:project01_riz_todolist/widgets/my_Button.dart';
import 'package:project01_riz_todolist/widgets/my_textfiled.dart';
import 'package:project01_riz_todolist/widgets/square_images.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String email = "", password = "", name = "";
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  final _formkey = GlobalKey<FormState>();

  registration() async {
    if (password != null &&
        _nameController.text != "" &&
        _emailController.text != "") {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
          "Registered Successfully",
          style: TextStyle(fontSize: 20.0),
        )));
        // ignore: use_build_context_synchronously
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Password Provided is too Weak",
                style: TextStyle(fontSize: 18.0),
              )));
        } else if (e.code == "email-already-in-use") {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Account Already exists",
                style: TextStyle(fontSize: 18.0),
              )));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.color60,
      appBar: AppBar(
        title: const HeadlineOne(text: "Register", colorText: Colors.black),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  // Logo
                  const Icon(
                    Icons.lock,
                    size: 100,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  MyTextFiled(
                      valueText: "Please Enter Name",
                      controller: _nameController,
                      hintText: "Name",
                      obsecureText: false),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextFiled(
                      valueText: "Please Enter Email",
                      controller: _emailController,
                      hintText: "Email",
                      obsecureText: false),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextFiled(
                      valueText: "Please Enter Password",
                      controller: _passwordController,
                      hintText: "Password",
                      obsecureText: true),
                  const SizedBox(
                    height: 50,
                  ),
                  // or continue with
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade700,
                          thickness: 0.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "or continue with",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade700,
                          thickness: 0.5,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  // google and Apple sign in icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SquareTile(imagePath: "lib/images/google.png"),
                      SizedBox(
                        width: 20,
                      ),
                      SquareTile(imagePath: "lib/images/apple.png"),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  // Sign in Button
                  MyButton(
                    TextButton: "Register",
                    onTap: () {
                      if(_formkey.currentState!.validate()){
                          setState(() {
                            email=_emailController.text;
                            name= _nameController.text;
                            password=_passwordController.text;
                          });
                        }
                        registration();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavbar()), // Tambahkan tanda kurung kurawal di sini
                      );
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
