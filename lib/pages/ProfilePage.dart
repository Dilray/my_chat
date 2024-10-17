import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

// final List<Widget> pages = [
//   HomePage(),
//   ProfilePage(),
//   SettingsPage(),
// ];

class _ProfilePageState extends State<ProfilePage> {

   int _selectedIndex = 0;

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