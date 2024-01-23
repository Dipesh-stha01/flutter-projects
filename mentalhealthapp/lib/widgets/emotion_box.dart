import 'package:flutter/material.dart';

class EmotionBox extends StatelessWidget {
  final String emot;
  final String emotName;

  const EmotionBox({super.key, required this.emot, required this.emotName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Text(
              emot,
              style: const TextStyle(fontSize: 28),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          emotName,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
