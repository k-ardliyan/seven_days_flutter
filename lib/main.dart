import 'package:flutter/material.dart';
import 'router.dart'; // Replace with your actual project name

void main() {
  runApp(const SevenDaysApp());
}

class SevenDaysApp extends StatelessWidget {
  const SevenDaysApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
