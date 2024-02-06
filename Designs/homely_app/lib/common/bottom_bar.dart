import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homely_app/common/custom_button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 75,
      surfaceTintColor: Colors.black,
      elevation: 0,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomButton(
              name: "Home",
              icon: Icons.home,
              selected: true,
            ),
            CustomButton(
              name: "Renals",
              selected: false,
              icon: CupertinoIcons.cube_box,
            ),
            CustomButton(
              name: "Profile",
              selected: false,
              icon: CupertinoIcons.person_alt,
            ),
            CustomButton(
              selected: false,
              name: "Lockers",
              icon: CupertinoIcons.map,
            ),
          ],
        ),
      ),
    );
  }
}
