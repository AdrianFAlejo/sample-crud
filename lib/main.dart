import 'package:flutter/material.dart';
import 'package:sample_crud/screens/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample Crud',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, error: Colors.red),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          displayMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
          displaySmall: TextStyle(fontSize: 16, color: Colors.white),
          // Add more text styles as needed
        ),

        useMaterial3: true,
      ),
      debugShowCheckedModeBanner : false,
      home: const LandingPage(),
    );
  }
}

