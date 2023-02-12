import 'package:application1/screens/my_businesses/container3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'container1.dart';
import 'container2.dart';
import 'container3.dart';


class MyBusinesses extends StatelessWidget {
  const MyBusinesses({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 35, 35),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 36, 35, 35),
        title: Text('My Businesses',
          style: TextStyle(
            fontSize: 25,color: Color.fromARGB(255, 201, 141, 30),
          ), 
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            MyFirstContainer(),
            SizedBox(height: 30,),
            MySecondContainer(),
            SizedBox(height: 30,),
            MyThirdWidget(),
          ],
        ),
      ),
    );
}