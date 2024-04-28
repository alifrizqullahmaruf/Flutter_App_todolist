import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/data/my_color.dart';
import 'package:project01_riz_todolist/screens/bottom_navbar.dart';
import 'package:project01_riz_todolist/screens/register_page.dart';
import 'package:project01_riz_todolist/widgets/my_Button.dart';
import 'package:project01_riz_todolist/widgets/my_button_outline.dart';
import 'package:project01_riz_todolist/widgets/my_textfiled.dart';
import 'package:project01_riz_todolist/widgets/square_images.dart';

class LoginPage extends StatelessWidget {
  // Controller
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.color60,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Center(
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

            // Welcome back,you've been missed!
            Text(
              "Welcome back,you've been missed!",
              style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
            ),
            const SizedBox(
              height: 20,
            ),
            // Username
            MyTextFiled(
              valueText: "Please Enter Username",
                controller: _usernameController,
                hintText: "Username",
                obsecureText: false),
            const SizedBox(
              height: 10,
            ),

            // password
            MyTextFiled(
              valueText: "Please Enter Password",
                controller: _passwordController,
                hintText: "Password",
                obsecureText: true),
            const SizedBox(
              height: 8,
            ),
            // forgot password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot password",
                    style: TextStyle(color: MyColor.color10),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            // Sign in Button
            MyButton(
              TextButton: "Sign In",
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
              height: 16,
            ),
            MyButtonOutline(
                TextButton: "Register",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RegisterPage()), // Tambahkan tanda kurung kurawal di sini
                  );
                }),
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
            const Row(
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
            // not a member register now!
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a memeber?",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  "Register now!",
                  style: TextStyle(
                      color: MyColor.color10, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ))),
      ),
    );
  }
}
