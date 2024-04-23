import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/data/my_color.dart';
import 'package:project01_riz_todolist/screens/bottom_navbar.dart';
import 'package:project01_riz_todolist/widgets/headline_one.dart';
import 'package:project01_riz_todolist/widgets/my_Button.dart';
import 'package:project01_riz_todolist/widgets/my_textfiled.dart';
import 'package:project01_riz_todolist/widgets/square_images.dart';

class RegisterPage extends StatelessWidget {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  RegisterPage({
    super.key,
  }); // Perbaiki sintaks super.key

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
                      controller: _nameController,
                      hintText: "Name",
                      obsecureText: false),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextFiled(
                      controller: _emailController,
                      hintText: "Email",
                      obsecureText: false),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextFiled(
                      controller: _passwordController,
                      hintText: "Password",
                      obsecureText: true),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextFiled(
                      controller: _passwordController,
                      hintText: "Confirm Password",
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
