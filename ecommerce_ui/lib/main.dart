import 'package:ecommerce_ui/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'pages/cart_page.dart';
import 'pages/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomePage(),
        'cartPage': (context) => const CartPage(),
        'itemPage': (context) => ItemPage(),
      },
    );
  }
}
