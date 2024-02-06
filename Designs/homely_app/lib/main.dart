import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homely_app/pages/home_page.dart';
import 'package:homely_app/pages/instruction_page.dart';
import 'package:homely_app/pages/my_rentals_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: "Tool Rental App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          bodyMedium: GoogleFonts.lato(textStyle: textTheme.bodyMedium),
        ),
      ),
      home: MyRentalPage(),
      // routes: {
      //   '/': (_) => const HomePage(),
      //   'myRentals': (_) => const MyRentalPage(),
      //   'instructionPage': (_) => const InstructionPage(),
      // },
    );
  }
}
