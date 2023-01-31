import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart';
import 'package:module7/artists.dart';
import 'main.dart';

class Artists extends StatefulWidget {
  static const route = 'artists';
  const Artists({super.key});

 
  @override
  State<Artists> createState() => _ArtistsState();
}

class _ArtistsState extends State<Artists> {

  

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Items:"),
        ),
        body: Column(
          children: [
            Text("Items:${args.keys}")
          ],
        )
      ),
    );
  }
}

