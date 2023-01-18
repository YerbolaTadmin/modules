import 'package:flutter/material.dart';
import 'containers/widgets/horizontal_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Horizontal_App(),
    );
  }
}