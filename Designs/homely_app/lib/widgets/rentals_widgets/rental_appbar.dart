import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homely_app/constants/colors.dart';
import 'package:badges/badges.dart' as badges;

class RentalAppBar extends StatelessWidget {
  const RentalAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 130),
            child: Text(
              "My rentals",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: textColor,
              ),
            ),
          ),
          const SizedBox(width: 90),
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
