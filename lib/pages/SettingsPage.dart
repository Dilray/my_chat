import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Align(
        alignment: const Alignment(0, -0.7), // Положение кнопки чуть выше центра (0, 0) — центр, -0.2 — чуть выше
        child: SizedBox(
          width: 250, // Длина кнопки
          height: 50, // Ширина кнопки
          child: ElevatedButton(
            onPressed: () {
              print("Кнопка нажата");
            },
            child: const Text("Уведомления и звуки"),
          ),
        ),
      ),
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
    );
  }
}