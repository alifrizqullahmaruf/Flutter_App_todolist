import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/screens/login_page.dart';
import 'package:project01_riz_todolist/widgets/card_profile.dart';
import 'package:project01_riz_todolist/widgets/headline_one.dart';
import 'package:project01_riz_todolist/widgets/my_Button.dart';
import 'package:project01_riz_todolist/widgets/my_button_outline.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeadlineOne(
            text: "Profile Navigation", colorText: Colors.black),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32,
              ),
              // Foto
              Center(
                child: ClipOval(
                  child: Image.network(
                    'https://i.pinimg.com/236x/65/7d/a6/657da61875ab7c6c2ccb0bbf07868204.jpg',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //Nama
              CardProfile(
                  textHeadline: "Nama", textData: "Alif Rizqullah Maruf"),
              //Email
              CardProfile(
                  textHeadline: "Email",
                  textData: "alifrizqullahmaruf2003@gmail.com"),
              //Alamat
              CardProfile(
                  textHeadline: "Alamat", textData: "Jln. Haji Mat Ali"),
              //No Telp
              CardProfile(
                  textHeadline: "No Telp", textData: "+62-8211149-2113"),

              SizedBox(height: 24),

              // logout
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: MyButton(
                    TextButton: "Logout",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    }),
              ),
              // edit profile
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child:
                    MyButtonOutline(TextButton: "Edit Profile", onTap: () {}),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
