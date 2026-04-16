import 'package:flutter/material.dart';
import 'package:health_stats_ui/screens/home_screen.dart';

void main() {
  runApp(const AiApp());
}

class AiApp extends StatelessWidget {
  const AiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
