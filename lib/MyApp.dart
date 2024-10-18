import 'package:flutter/material.dart';
import 'package:my_chat/pages/HomePage.dart';
import 'package:my_chat/pages/ProfilePage.dart';
import 'package:my_chat/pages/SettingsPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
 Widget build(BuildContext context) {
   return const MaterialApp(
       home: WelcomePage()
  );
 }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  _WelcomePage createState() => _WelcomePage();
}

class _WelcomePage extends State<WelcomePage> {
  int _selectedIndex = 2;

  final List<Widget> _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2, color: Colors.grey),
              label: 'Профиль',
              activeIcon: Icon(Icons.person_2, color: Colors.black87),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.grey),
              label: 'Чаты',
              activeIcon: Icon(Icons.home, color: Colors.black87),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.grey),
              label: 'Настройки',
              activeIcon: Icon(Icons.settings, color: Colors.black87),
            ),
          ],
          onTap: _onItemTapped,
        )
    );
  }
}