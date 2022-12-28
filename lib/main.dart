import 'package:flutter/material.dart';
import 'package:unlearning_flutter/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unlearning Flutter',
      theme: ThemeData(
        
        primarySwatch: Colors.blueGrey,
      ),
      home: const Home(),
    );
  }
}

