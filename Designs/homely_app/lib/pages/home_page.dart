import 'package:flutter/material.dart';
import 'package:homely_app/constants/colors.dart';
import 'package:homely_app/common/bottom_bar.dart';
import 'package:homely_app/widgets/home_widgets/categories_container.dart';
import 'package:homely_app/widgets/home_widgets/home_appbar.dart';
import 'package:homely_app/widgets/home_widgets/popular_choices.dart';
import 'package:homely_app/widgets/home_widgets/search_tool.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: backgroundColor,
          child: const Column(
            children: [
              SizedBox(height: 10),
              HomeAppBar(),
              SearchTool(),
              CategoriesContainer(),
              PopularChoices(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
