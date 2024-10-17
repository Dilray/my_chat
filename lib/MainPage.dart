import 'package:flutter/material.dart';
import 'package:my_chat/screens/HomeScreen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

 @override
 Widget build(BuildContext context) {
   return const MaterialApp(
       home: HomeScreen()
  );
 }
}