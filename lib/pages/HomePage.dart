import 'package:flutter/material.dart';
import 'package:my_chat/pages/SettingsPage.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    // Переход на новую страницу в зависимости от выбранного индекса
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SettingsPage()),
        );
        break;
      // case 2:
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => ThirdPage()),
      //   );
      //   break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
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
        bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.white,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Профиль',
          activeIcon: Icon(Icons.person),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Чаты',
          activeIcon: Icon(Icons.home_filled),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Настройки',
          activeIcon: Icon(Icons.settings),
        ),
      ],
      onTap: _onItemTapped,
        )
    );
  }
}