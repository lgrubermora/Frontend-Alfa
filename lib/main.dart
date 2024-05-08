import 'package:alfa_soyzen/presentation/Course.dart';
import 'package:alfa_soyzen/presentation/Tips_topics.dart';
import 'package:flutter/material.dart';
import 'package:alfa_soyzen/presentation/homescreen.dart';

import 'presentation/notificationscreen/notificationscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gymnastic Center',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: (Yoga_basics()),
      routes: {
        '/notification': (context) => NotificationScreen(),
      },
    );
  }
}
