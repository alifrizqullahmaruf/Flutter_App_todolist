import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/data/dummy_data.dart';
import 'package:project01_riz_todolist/data/my_color.dart';
import 'package:project01_riz_todolist/widgets/big_card.dart';
import 'package:project01_riz_todolist/widgets/card_grid_item.dart';
import 'package:project01_riz_todolist/widgets/headline_one.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openMenu(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.color60,
      appBar: AppBar(
        title: const HeadlineOne(text: "Home page", colorText: Colors.black),
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => _openMenu(context),
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'George Michaelis',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ), // Ganti dengan nama Anda
              accountEmail: Text(
                'george.michaelis@gmail.com',
                style: TextStyle(color: Colors.black),
              ), // Ganti dengan email Anda
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/236x/f4/31/70/f43170dfd9812faad7256a7ed6a5caed.jpg"), // Ganti dengan foto profil Anda
                backgroundColor: MyColor.color60,
              ),
              decoration: BoxDecoration(
                color: MyColor.color30, // Atur warna latar belakang drawer
                image: DecorationImage(
                  image: AssetImage(
                      'images/back.jpg'), // Ganti dengan gambar latar belakang Anda
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.file_upload),
              title: Text('Upload'),
              onTap: () {
                print('Upload tapped');
              },
            ),
            // Tambahkan item-item drawer lainnya di sini
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Card panjang
                const Row(
                  children: [BigCard()],
                ),
                const SizedBox(
                  height: 16,
                ),
                // Heading
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "My Task",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                // Grid view
                GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  children: [
                    for (final listItem in availableList)
                      CardGridItems(listItem: listItem),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
