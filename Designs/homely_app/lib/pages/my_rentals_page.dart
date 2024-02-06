import 'package:flutter/material.dart';
import 'package:homely_app/common/bottom_bar.dart';
import 'package:homely_app/constants/colors.dart';
import 'package:homely_app/widgets/rentals_widgets/current_rented.dart';
import 'package:homely_app/widgets/rentals_widgets/rental_appbar.dart';

class MyRentalPage extends StatefulWidget {
  const MyRentalPage({super.key});

  @override
  State<MyRentalPage> createState() => _MyRentalPageState();
}

class _MyRentalPageState extends State<MyRentalPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            RentalAppBar(),
            CurrentRented(),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
