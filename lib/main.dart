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
  Duration duration = Duration(seconds: 0);
  bool isrunig = false;
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
    returnfuchn = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        int nwoSeconds = duration.inSeconds + 1;
        duration = Duration(seconds: nwoSeconds);
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
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 15, 196, 64)),
            ),
          ),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Container(
            color: Colors.black,
            child: Column(children: [
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
              // ///////////////////////////////////////////
              SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 22),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          duration.inHours
                              .remainder(99)
                              .toString()
                              .padLeft(2, "0"),
                          style: TextStyle(
                            fontSize: 50,
                          ),
                        ),
                      ),
                      Text(
                        "الساعات",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 33,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 22),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          duration.inMinutes
                              .remainder(60)
                              .toString()
                              .padLeft(2, "0"),
                          style: TextStyle(
                            fontSize: 50,
                          ),
                        ),
                      ),
                      Text(
                        "الدقائق",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 33,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 22),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          duration.inSeconds
                              .remainder(60)
                              .toString()
                              .padLeft(2, "0"),
                          style: TextStyle(
                            fontSize: 50,
                          ),
                        ),
                      ),
                      Text(
                        "الثواني",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isrunig
                      ? Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (returnfuchn!.isActive) {
                                    returnfuchn!.cancel();
                                  } else {
                                    starttimre();
                                  }
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 197, 25, 97)),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(14)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(9))),
                              ),
                              child: Text(
                                (returnfuchn!.isActive)
                                    ? "ايقاف الوقت "
                                    : "تكملة",
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isrunig = false;

                                  duration = Duration(seconds: 0);
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 197, 25, 97)),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(14)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(9))),
                              ),
                              child: Text(
                                "الغاء",
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                          ],
                        )
                      : ElevatedButton(
                          onPressed: () {
                            starttimre();
                            setState(() {
                              isrunig = true;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 25, 120, 197)),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(14)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9))),
                          ),
                          child: Text(
                            "ابد ",
                            style: TextStyle(fontSize: 19),
                          ),
                        ),
                ],
              ),
            ])));
  }
}
