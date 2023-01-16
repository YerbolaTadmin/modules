import 'package:flutter/material.dart';
import 'package:task5_1/contains/widgets/app_Bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Application_bar_body(),
    );
  }
}