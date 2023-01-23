import 'package:flutter/material.dart';

class HorizontalApp extends StatefulWidget {
  const HorizontalApp({super.key});

  @override
  State<HorizontalApp> createState() => _HorizontalAppState();
}

class _HorizontalAppState extends State<HorizontalApp> {
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