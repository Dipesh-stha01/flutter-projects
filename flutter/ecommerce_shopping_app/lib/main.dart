import 'package:ecommerce_shopping_app/colors.dart';
import 'package:ecommerce_shopping_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce Shopping',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: themeColor,
      ),
      home: const SplashScreen(),
    );
  }
}
