import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

   int _selectedIndex = 2;

   void _onItemTapped(int index) {
     setState(() {
       _selectedIndex = index; // Обновляем индекс выбранной страницы
     });
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
        body: IndexedStack(
          index: _selectedIndex, // Указываем текущий индекс
          children: pages, // Список страниц
        ),
      backgroundColor: Colors.amber,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Профиль',
              activeIcon: Icon(Icons.person, color: Colors.grey),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Чаты',
              activeIcon: Icon(Icons.home, color: Colors.grey),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.black87),
              label: 'Настройки',
              activeIcon: Icon(Icons.settings, color: Colors.black87),
            ),
          ],
          onTap: _onItemTapped,
        )
    );
  }
}