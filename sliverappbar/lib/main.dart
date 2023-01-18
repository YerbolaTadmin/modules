import 'package:flutter/material.dart';
import 'package:sliverappbar/contains/widgets/slivver_app_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sliverappbar(),
    );
  }
}