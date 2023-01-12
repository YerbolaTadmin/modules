import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
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
        Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: ElevatedButton(onPressed: () {}, 
        child:Text('Оплатить'),
        style: ElevatedButton.styleFrom(primary: Colors.grey)),
        )
          ],
        )
        
      ));
    } else {
      _controller!.close();
      _controller = null;
    }
  }

  List<Widget> _tabList = [
    Container(color: Colors.teal,),
    Container(color: Colors.purple,),
    Container(color: Colors.yellow,),
  ];
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this,length: _tabList.length);
  }
  
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController?.dispose();
    super.dispose();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: ScaffoldKey,
        appBar: AppBar(
          title: Text('FIRST TASK'),
        ),
        drawer: Drawer(
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
              ),)

            ],
          )
        ),
        body: TabBarView(
          controller: _tabController,
          children: _tabList,),
        bottomNavigationBar: BottomNavigationBar(
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
              label: "albums")
          ]),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: toggleBottomSheet,
            label: Text('Open')),
      ),
    );
  }
}