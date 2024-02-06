import 'package:flutter/material.dart';
import 'package:homely_app/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final IconData? icon;
  final bool selected;
  const CustomButton(
      {super.key, required this.name, this.icon, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: selected == true ? themeColor : Colors.grey,
          size: selected == true ? 28 : 25,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: selected == true ? 14 : 13,
            color: selected == true ? themeColor : Colors.grey,
          ),
        ),
      ],
    );
  }
}
