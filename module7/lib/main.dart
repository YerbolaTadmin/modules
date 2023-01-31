import 'package:flutter/material.dart';
import 'package:module7/artists.dart';
import 'home.dart';
import 'my_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        MyHomePage.route:(context) => const MyHomePage(),
        Artists.route:(context) => const Artists(),
        Home.route:(context) => const Home()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}