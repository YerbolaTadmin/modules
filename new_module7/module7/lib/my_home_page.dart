import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart';
import 'artists.dart';
import 'main.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'drawer.dart';

class MyHomePage extends StatefulWidget {
  static const route = '/';
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("MODULE7"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text("MODULE 7"),
      ),
    ));
  }
}
