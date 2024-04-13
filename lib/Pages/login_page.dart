import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            height: 20,
          ),
          // Welcome back,you've been missed!
          Text(
            "Welcome back,you've been missed!",
            style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
          ),

          // Username
          TextField(),
          const SizedBox(
            height: 20,
          ),

          // password
          TextField(),
          const SizedBox(
            height: 16,
          ),

          // forgot password
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot password",
                  style: TextStyle(color: Colors.grey.shade600),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          // Sign in Button

          const SizedBox(
            height: 50,
          ),
          // or continue with
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(
                color: Colors.grey.shade400,
                thickness: 0.5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "or continue with",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Divider(
                color: Colors.grey.shade400,
                thickness: 0.5,
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          // google and Apple sign in icon

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
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ))),
    );
  }
}
