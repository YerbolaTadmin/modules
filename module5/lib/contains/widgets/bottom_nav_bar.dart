import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Bottom_Nav_Bar extends StatefulWidget {
  const Bottom_Nav_Bar({super.key});

  @override
  State<Bottom_Nav_Bar> createState() => _Bottom_Nav_BarState();
}

class _Bottom_Nav_BarState extends State<Bottom_Nav_Bar> with SingleTickerProviderStateMixin{
  int _currentIndex = 0;

  List<Widget> _tabList = [
    Container(color: Colors.teal,),
    Container(color: Colors.purple,),
    Container(color: Colors.yellow,),
  ];

  TabController? _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this,length: _tabList.length);
  }
  
  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) => BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (currentIndex) {
            setState(() {
              _currentIndex = currentIndex;
            });
            _tabController?.animateTo(_currentIndex);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat"),
            BottomNavigationBarItem(
              icon: Icon(Icons.album),
              label: "albums"),
          ]
          );
  

}