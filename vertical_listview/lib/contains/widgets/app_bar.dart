import 'package:flutter/material.dart';

class VerticalListview extends StatefulWidget {
  const VerticalListview({super.key});

  @override
  State<VerticalListview> createState() => _VerticalListviewState();
}

class _VerticalListviewState extends State<VerticalListview> {
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