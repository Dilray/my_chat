import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                icon: Icon(Icons.home),
                label: 'Главная',
                activeIcon: Icon(Icons.home_filled),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Профиль',
                activeIcon: Icon(Icons.person_outline),
              ),
            ]
        )
    );
  }
}