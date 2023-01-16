import 'package:flutter/material.dart';
import 'package:task5_1/contains/widgets/bottom_nav_bar.dart';
import 'package:task5_1/contains/widgets/drawer.dart';
import 'package:task5_1/contains/widgets/end_drawer.dart';


class Application_bar_body extends StatefulWidget {
  const Application_bar_body({super.key});

  @override
  State<Application_bar_body> createState() => _Application_bar_bodyState();
}

class _Application_bar_bodyState extends State<Application_bar_body> with SingleTickerProviderStateMixin{
  final GlobalKey<ScaffoldState> ScaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;
  PersistentBottomSheetController? _controller;

  void toggleBottomSheet(){
    if (_controller == null) {
      _controller = ScaffoldKey.currentState?.showBottomSheet((context) => Container(
        height: 200,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Сумма'),
              trailing: Text('200 руб'),
              ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ElevatedButton(onPressed: () {}, 
              child:Text('Оплатить'),
              style: ElevatedButton.styleFrom(primary: Colors.grey)),
              )
            ],
          )
        )
      );
    } else {
      _controller!.close();
      _controller = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      key: ScaffoldKey,
        appBar: AppBar(
          title: Text('FIRST TASK'),
          actions: [
            Builder(builder: (context) => IconButton(
              onPressed: () {
                onPressed: Scaffold.of(context).openEndDrawer();
              },
              icon: Icon(Icons.person)))
          ],
        ),
        drawer: PublicDrawer(),

        endDrawer: PublicEndDrawer(),

        bottomNavigationBar: Bottom_Nav_Bar(),

        floatingActionButton: FloatingActionButton.extended(
            onPressed: toggleBottomSheet,
            label: Text('Open'),

      )
    );
  }
}