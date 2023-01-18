import 'package:flutter/material.dart';

class Horizontal_App extends StatefulWidget {
  const Horizontal_App({super.key});

  @override
  State<Horizontal_App> createState() => _Horizontal_AppState();
}

class _Horizontal_AppState extends State<Horizontal_App> {
  var list = new List<int>.generate(100, (i) => i+1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal List'),
      ),
      body: Container(
        child: ListView(
          children: [
            for (int x = 1;x<list.length;x++)...[
              Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Text("$x"),
                ),
              )
            ]
          ],
        )
      ),
     );
  }
}