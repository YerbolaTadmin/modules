import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart';
import 'artists.dart';
import 'main.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'drawer.dart';

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
        drawer: MyDrawer(),
        body: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}
