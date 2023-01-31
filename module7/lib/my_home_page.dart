import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'songs.dart';
import 'home.dart';
import 'artists.dart';
import 'main.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  static const route = '/';
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  Future<List<Songs>>ReadJsonData() async{
    final jsondata = await rootBundle.rootBundle.loadString('assets/artists.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((artist) => Songs.fromJson(artist)).toList();
  }
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
      appBar: AppBar(title: Text("MODULE 7"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Home"),
              onTap: () {
                Navigator.pushNamed(context, Home.route);
              },
            ),
            ListTile(
              title: Text("Artists"),
              onTap: () {
                Navigator.pushNamed(context, Artists.route);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("MODULE 7"),
      ),
    )
   );
  }
}



