import 'package:flutter/material.dart';
import 'package:my_chat/pages/HomePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
 Widget build(BuildContext context) {
   return MaterialApp(
       home: HomePage()
  );
 }
}