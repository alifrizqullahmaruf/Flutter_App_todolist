import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/screens/add_page.dart';
import 'package:project01_riz_todolist/screens/home_page.dart';
import 'package:project01_riz_todolist/screens/profile_page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    AddPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blue.shade300,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        backgroundColor: Colors.blue.shade700,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
