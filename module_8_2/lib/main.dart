
import 'fetch_file.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _textcontroller = TextEditingController();
  var userPost = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catch error'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  width: 300,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    child: TextField(
                      controller: _textcontroller,
                      decoration: InputDecoration(
                        hintText: 'Введите значение',
                        border: OutlineInputBorder(),
                        suffixIcon: TextButton(
                          onPressed: () {
                            setState(() {
                              userPost = _textcontroller.text;
                            });
                          },
                          child: Text("Найти"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
           FutureBuilder<String>(
            future: fetchFileFromAssets(userPost),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Center(
                    child: Text('NONE'),
                  );
                case ConnectionState.waiting:
                  return Center(child: CircularProgressIndicator());
       
                case ConnectionState.done:
          
                  return SingleChildScrollView(child: Text(snapshot.data));

                default:
                  return SingleChildScrollView(
                    child: Text('Default'),
                  );
              }
            },
          ),
        ],
      ),
    );
  }
}
