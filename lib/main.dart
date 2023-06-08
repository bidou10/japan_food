import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:japan_food/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delicious Japan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.pacificoTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}
