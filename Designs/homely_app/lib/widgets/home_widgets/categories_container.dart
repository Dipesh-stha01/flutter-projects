import 'package:flutter/material.dart';
import 'package:homely_app/common/category_box.dart';
import 'package:homely_app/constants/colors.dart';

class CategoriesContainer extends StatelessWidget {
  const CategoriesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Categories",
            style: TextStyle(
              fontSize: 18,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: const Row(
              children: [
                CategoryBox(name: "Indoor"),
                SizedBox(width: 15),
                CategoryBox(name: "Outdoor"),
                SizedBox(width: 15),
                CategoryBox(name: "Other"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
