import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PublicDrawer extends StatefulWidget {
  const PublicDrawer({super.key});

  @override
  State<PublicDrawer> createState() => _PublicDrawerState();
}

class _PublicDrawerState extends State<PublicDrawer> {
  @override
  Widget build(BuildContext context) => Drawer(
          child: Column(
            children: [
              DrawerHeader(child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage('https://picsum.photos/id/237/200/300'),
              ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                trailing: Icon(Icons.arrow_forward),),
              ListTile(
                leading: Icon(Icons.image),
                title: Text('Images'),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.file_copy),
                title: Text('Files'),
                trailing: Icon(Icons.arrow_forward),
              ),
              
              Padding(padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {}, 
                    child: Text('Выход'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),),
                  ElevatedButton(onPressed: () {}, child: Text('Регистрация'),style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),)
                ],
              ),
            ),
          ],
        )
      );
}