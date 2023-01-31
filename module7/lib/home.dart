import 'package:flutter/material.dart';
import 'my_home_page.dart';
import 'artists.dart';
import 'main.dart';

class Home extends StatelessWidget {
  static const route = '/home';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}
