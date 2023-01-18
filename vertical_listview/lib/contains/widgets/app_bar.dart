import 'package:flutter/material.dart';

class Vertical_listview extends StatefulWidget {
  const Vertical_listview({super.key});

  @override
  State<Vertical_listview> createState() => _Vertical_listviewState();
}

class _Vertical_listviewState extends State<Vertical_listview> {
  final data = List<Widget>.generate(
    20,
    (index) => Container(
      margin: const EdgeInsets.all(10.0),
      color: Colors.deepPurple,
    ),
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double width = constraints.constrainWidth();
                return width > 500
                ? GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 8,
                ),
                itemBuilder: ((context, index) => data[index]),
                itemCount: data.length,
                )
                : ListView.builder(
                  itemBuilder: ((context, index) => data[index]),
                  itemCount: data.length,
                );
              },
            ))
        ],
      )
    );
  }
}