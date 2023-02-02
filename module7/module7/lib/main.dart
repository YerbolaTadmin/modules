import 'package:flutter/material.dart';
import 'package:module7/about.dart';
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
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case MyHomePage.route:
              return MaterialPageRoute(builder: (context) {
                return MyHomePage();
              });
            case Artists.route:
              return MaterialPageRoute(builder: (context) {
                return Artists();
              });
            case Home.route:
              return MaterialPageRoute(builder: (context) {
                return Home();
              });
            case About.route:
              final args = settings.arguments as Map<String, dynamic>;
              return MaterialPageRoute(builder: (context) {
                return About(
                  aboute: args['about'],
                  link: args['link'],
                );
              });
          }
        });
  }
}
