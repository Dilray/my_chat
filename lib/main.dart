import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'MyApp.dart';

// Точка входа в приложение
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: "",
    options: const FirebaseOptions(
        apiKey: "AIzaSyCJw5xW4hi94MoZ3RRoQG1SMvzJPzONXzg",
        appId: "1:219596457845:android:52e7a0916e3bd83135753c",
        messagingSenderId: "219596457845",
        projectId: "mychat-f7187",
        storageBucket: "mychat-f7187.appspot.com",
    ),
  );
  runApp(const MyApp());
}