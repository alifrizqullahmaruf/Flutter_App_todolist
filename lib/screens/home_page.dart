import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/data/dummy_data.dart';
import 'package:project01_riz_todolist/widgets/big_card.dart';
import 'package:project01_riz_todolist/widgets/card_grid_item.dart';
import 'package:project01_riz_todolist/widgets/headline_one.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeadlineOne(text: "Home page", colorText: Colors.black),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
        automaticallyImplyLeading: false,
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
