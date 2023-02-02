import 'dart:convert';
import 'drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:module7/about.dart';
import 'home.dart';
import 'package:module7/artists.dart';
import 'main.dart';

class Artists extends StatefulWidget {
  static const route = 'artists';
  const Artists({super.key, this.name});
  final String? name;

  @override
  State<Artists> createState() => _ArtistsState();
}

class _ArtistsState extends State<Artists> {
  List? data;
  Future<String> readJson() async {
    final String response = await rootBundle.loadString('assets/artists.json');
    setState(() => data = json.decode(response));
    return 'success';
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.readJson();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Items:"),
        ),
        drawer: MyDrawer(),
        body: Container(
          child: ListView.builder(
              itemCount: data?.length,
              itemBuilder: ((context, index) {
                var name = data?[index]['name'];
                var jsondata = data?[index];
                return Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, About.route,
                            arguments: jsondata);
                      },
                      child: Text(name.toString(),
                          style: TextStyle(color: Colors.blue)),
                    )
                  ],
                );
              })),
        ),
      ),
    );
  }
}
