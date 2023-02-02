// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import "dart:async";
import 'package:intl/intl.dart';
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
  String weekday = "";
  String date = "";
  String timenow = "";

  fahad() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        weekday = "";
        date = "";
        timenow = "";
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
        child: Container(
          height: 5700,
          width: 5700,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                " اليوم/weekday",
                style: TextStyle(fontSize: 33, color: Colors.red),
              ),
              SizedBox(),
              Text(
                date,
                style: TextStyle(fontSize: 33, color: Colors.red),
              ),
              SizedBox(),
              Text(
                timenow,
                style: TextStyle(fontSize: 33, color: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
