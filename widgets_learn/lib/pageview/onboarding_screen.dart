import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/image1.jpg"),
              const Text(
                "Working to Improve",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Text(
                  "We are constantly striving to enhance our performance and make things better. Our team is dedicated to finding ways to improve every aspect of our work.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              row(_currentIndex),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/image2.jpg"),
              const Text(
                "Working to Improve",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Text(
                  "We are constantly striving to enhance our performance and make things better. Our team is dedicated to finding ways to improve every aspect of our work.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              row(_currentIndex),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/image3.jpg"),
              const Text(
                "Working to Improve",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Text(
                  "We are constantly striving to enhance our performance and make things better. Our team is dedicated to finding ways to improve every aspect of our work.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              row(_currentIndex),
            ],
          ),
        ],
        onPageChanged: (pageIndex) {
          setState(() {
            _currentIndex = pageIndex;
          });
        },
        // pageSnapping: false,
      ),
    );
  }

  Widget row(int pageIndex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        pageIndex == 0
            ? const Icon(Icons.circle, size: 10)
            : const Icon(Icons.circle_outlined, size: 10),
        pageIndex == 1
            ? const Icon(Icons.circle, size: 10)
            : const Icon(Icons.circle_outlined, size: 10),
        pageIndex == 2
            ? const Icon(Icons.circle, size: 10)
            : const Icon(Icons.circle_outlined, size: 10)
      ],
    );
  }
}
