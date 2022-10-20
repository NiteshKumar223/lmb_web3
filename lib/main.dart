import 'package:flutter/material.dart';
import 'package:flutter_web/custom_ui/custom_color.dart';
import 'package:flutter_web/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lmb Technology',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: WebColors.bgcolor1,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
      ),
      home: HomeScreen(),
    );
  }
}