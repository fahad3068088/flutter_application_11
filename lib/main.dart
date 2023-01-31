// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import "dart:async";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String year="";
   

  fahad(){
    Timer.periodic(Duration(seconds: 1), (timer) {
    setState(() {
      year=DateTime.now().year.toString();
    });
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fahad();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "ساعة العالم الاسلامي",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(" اليوم/",style: TextStyle(fontSize: 33),),
          SizedBox(),
          Text("11 / 10 / $year",style: TextStyle(fontSize: 33),),
           SizedBox(),
            Text("11 : 44 : 33",style: TextStyle(fontSize: 33),)
          ],

          
          
          
        ),
      ),
    );
  }
}
