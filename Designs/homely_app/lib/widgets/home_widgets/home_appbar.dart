import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:homely_app/constants/colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Welcome John!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: textColor,
            ),
          ),
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(badgeColor: themeColor),
            position: badges.BadgePosition.topStart(top: -3, start: -5),
            badgeContent: const Text(
              "1",
              style: TextStyle(
                color: Colors.white,
                fontSize: 9,
              ),
            ),
            child: const Icon(
              Icons.notifications_outlined,
              size: 26,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
