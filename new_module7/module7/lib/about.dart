import 'package:flutter/material.dart';

class About extends StatefulWidget {
  static const route = '/about';
  const About({super.key, this.link, this.aboute});
  final String? link;
  final String? aboute;

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.link}"),
      ),
      body: Center(
        child: Text("${widget.aboute}"),
      ),
    );
  }
}
