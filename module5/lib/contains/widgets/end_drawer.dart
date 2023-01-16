import 'package:flutter/material.dart';

class PublicEndDrawer extends StatefulWidget {
  const PublicEndDrawer({super.key});

  @override
  State<PublicEndDrawer> createState() => _PublicEndDrawerState();
}

class _PublicEndDrawerState extends State<PublicEndDrawer> {
  @override
  Widget build(BuildContext context) => Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://picsum.photos/200/300'),
                  ))
                ],
              ),
              Text('Random photo')
            ],
          )
        );
}