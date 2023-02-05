import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart';
import 'artists.dart';
import 'main.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) => Drawer(
          child: ListView(
        children: [
          ListTile(
            title: Text(
              "Artists",
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Artists()), ModalRoute.withName('/artists'));
            },
          ),
          ListTile(
            title: Text(
              "Home",
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Home()), ModalRoute.withName('/home '));
            },
          ),
        ],
      ));
}
