import 'package:flutter/material.dart';
import 'input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        primaryColor: Color(0xFF122932),
        scaffoldBackgroundColor:  Color(0xB3122932),
        appBarTheme:  const AppBarTheme(
            backgroundColor: Color(0xFF122932), // AppBar background color
            elevation: 4, // AppBar shadow
            centerTitle: true, // Center the title
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          ),
        colorScheme:ColorScheme.fromSeed(
          seedColor: Colors.teal,
        )


        // colorScheme:
      ),
      home: InputPage(),
    );
  }
}

