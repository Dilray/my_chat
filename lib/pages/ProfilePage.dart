import 'package:flutter/material.dart';
import 'package:my_chat/pages/HomePage.dart';

import 'SettingsPage.dart';

class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

   int _selectedIndex = 0;

  void _onItemTapped(int index) {
    // Переход на новую страницу в зависимости от выбранного индекса
    switch (index) {
    case 0:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfilePage()),
      );
      break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SettingsPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleTextStyle: const TextStyle(
            color: Colors.black87,
            fontSize: 23.0,
            letterSpacing: 2.0,
          ),
          centerTitle: true,
          title: const Text("MyChat"),
        ),
        backgroundColor: Colors.red,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Профиль',
              activeIcon: Icon(Icons.person, color: Colors.black87),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Чаты',
              activeIcon: Icon(Icons.home, color: Colors.grey),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Настройки',
              activeIcon: Icon(Icons.settings, color: Colors.grey),
            ),
          ],
          onTap: _onItemTapped,
        )
    );
  }
}