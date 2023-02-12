import 'package:flutter/material.dart';

class MyThirdWidget extends StatelessWidget {
  const MyThirdWidget({super.key});

  @override
  Widget build(BuildContext context) => Container(
              height: 104,
              width: 330,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 49, 50, 53),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 25,
                    offset: Offset(0, 20)
                  ),
                ],
              ),
              child: ListTile(
                title: Text('Master Coffee',style: TextStyle(color: Color.fromARGB(255, 201, 141, 30),fontSize: 25),),
                subtitle: Text('Active Passes',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 15),),
                trailing: Text('12',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 60),),
              ),
            );
}