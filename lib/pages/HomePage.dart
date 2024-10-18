import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Обновляем индекс выбранной страницы
    });
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
      //   bottomNavigationBar: BottomNavigationBar(
      // backgroundColor: Colors.white,
      // items: const <BottomNavigationBarItem>[
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.person),
      //     label: 'Профиль',
      //     activeIcon: Icon(Icons.person, color: Colors.grey,),
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home, color: Colors.black87),
      //     label: 'Чаты',
      //     activeIcon: Icon(Icons.home, color: Colors.black87),
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.settings),
      //     label: 'Настройки',
      //     activeIcon: Icon(Icons.settings, color: Colors.grey),
      //   ),
      // ],
      // onTap: _onItemTapped,
      //   )
    );
  }
}