import 'package:flutter/material.dart';
import 'package:my_chat/pages/HomePage.dart';

class SettingsPage extends StatefulWidget {

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  int _selectedIndex = 2;

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
      backgroundColor: Colors.amber,
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