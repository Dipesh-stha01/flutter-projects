import 'package:flutter/material.dart';
import 'package:widgets_learn/aspect_ratio/aspect_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Learning Widgets",
      home: AspectScreen(),
    );
  }
}
