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
  int mun = 7;
  Timer? returnfuchn;

  fahad() {
     Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        weekday = DateFormat("EEEE").format(DateTime.now());
        date = DateFormat.yMd().format(DateTime.now());
        timenow = DateFormat.jms().format(DateTime.now());
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fahad();
  }

  starttimre() {
    returnfuchn=Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
       
        if (mun>0) {
          mun--;
        }else{
          timer.cancel();
        }
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              "  الساعه الرقمية",
              style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 15, 196, 64)),
            ),
          ),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " $weekday",
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
              // -------------------------------------------------------------
              SizedBox(
                height: 100,
              ),
              Container(
                color: Colors.black,
                child: Column(
                  children: [
                    Text(
                      mun.toString().padLeft(2, "0"),
                      style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          backgroundColor: Colors.black),
                    ),
                    SizedBox(height: 50),
                    Text((mun>0)? " باقي":   "تم😍",
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                        )),
                    SizedBox(height: 50),
                    Container(
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              starttimre();
                             if ( mun==0 ) {
                             setState(() {
                                mun=7;
                             });
                               
                             } 
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 89, 65, 211)),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 10)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9))),
                            ),
                            child: Text("ابدا"),
                          ),
                          SizedBox(width: 50),
                          ElevatedButton(
                            onPressed: () {returnfuchn!.cancel();},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 189, 31, 31)),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 10)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9))),
                            ),
                            child: Text("ايقاف"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
