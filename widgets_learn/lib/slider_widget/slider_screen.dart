import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double sliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 300),
          const Center(
            child: Text(
              "Slider ?",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: Slider(
              min: 1,
              max: 10,
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
              // activeColor: Colors.redAccent,
              // thumbColor: Colors.tealAccent,
              // inactiveColor: Colors.blueAccent,
              // divisions: 10,
              // label: "Rating",
              // label works only with division
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        backgroundColor: Colors.deepPurple,
        child: Text(
          sliderValue.toStringAsFixed(2),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
