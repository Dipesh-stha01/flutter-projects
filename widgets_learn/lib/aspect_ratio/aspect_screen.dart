import 'package:flutter/material.dart';

class AspectScreen extends StatefulWidget {
  const AspectScreen({super.key});

  @override
  State<AspectScreen> createState() => _AspectScreenState();
}

class _AspectScreenState extends State<AspectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        children: [
          const SizedBox(height: 80),
          const Center(
            child: Text(
              "Aspect Ratio",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(height: 30),
          AspectRatio(
            aspectRatio: 1 / 1.4,
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
