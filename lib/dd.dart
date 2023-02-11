
//  SizedBox(
//                   height: 80,
//                 ),
//                 Row(
//                   children: [
//                     SizedBox(
//                       width: 60,
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(bottom: 22),
//                           padding: EdgeInsets.all(8),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                           child: Text(
//                             duration.inHours
//                                 .remainder(99)
//                                 .toString()
//                                 .padLeft(2, "0"),
//                             style: TextStyle(
//                               fontSize: 50,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           "الساعات",
//                           style: TextStyle(fontSize: 22, color: Colors.white),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       width: 33,
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(bottom: 22),
//                           padding: EdgeInsets.all(8),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                           child: Text(
//                             duration.inMinutes
//                                 .remainder(60)
//                                 .toString()
//                                 .padLeft(2, "0"),
//                             style: TextStyle(
//                               fontSize: 50,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           "الدقائق",
//                           style: TextStyle(fontSize: 22, color: Colors.white),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       width: 33,
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(bottom: 22),
//                           padding: EdgeInsets.all(8),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                           child: Text(
//                             duration.inSeconds
//                                 .remainder(60)
//                                 .toString()
//                                 .padLeft(2, "0"),
//                             style: TextStyle(
//                               fontSize: 50,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           "الثواني",
//                           style: TextStyle(fontSize: 22, color: Colors.white),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 33,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     isrunig
//                         ? Row(
//                             children: [
//                               ElevatedButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     if (returnfuchn!.isActive) {
//                                       returnfuchn!.cancel();
//                                     } else {
//                                       starttimre();
//                                     }
//                                   });
//                                 },
//                                 style: ButtonStyle(
//                                   backgroundColor: MaterialStateProperty.all(
//                                       Color.fromARGB(255, 197, 25, 97)),
//                                   padding: MaterialStateProperty.all(
//                                       EdgeInsets.all(14)),
//                                   shape: MaterialStateProperty.all(
//                                       RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(9))),
//                                 ),
//                                 child: Text(
//                                   (returnfuchn!.isActive)
//                                       ? "ايقاف الوقت "
//                                       : "تكملة",
//                                   style: TextStyle(fontSize: 19),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 35,
//                               ),
//                               ElevatedButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     isrunig = false;
            
//                                     duration = Duration(seconds: 0);
//                                   });
//                                 },
//                                 style: ButtonStyle(
//                                   backgroundColor: MaterialStateProperty.all(
//                                       Color.fromARGB(255, 197, 25, 97)),
//                                   padding: MaterialStateProperty.all(
//                                       EdgeInsets.all(14)),
//                                   shape: MaterialStateProperty.all(
//                                       RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(9))),
//                                 ),
//                                 child: Text(
//                                   "الغاء",
//                                   style: TextStyle(fontSize: 19),
//                                 ),
//                               ),
//                             ],
//                           )
//                         : ElevatedButton(
//                             onPressed: () {
//                               starttimre();
//                               setState(() {
//                                 isrunig = true;
//                               });
//                             },
//                             style: ButtonStyle(
//                               backgroundColor: MaterialStateProperty.all(
//                                   Color.fromARGB(255, 25, 120, 197)),
//                               padding:
//                                   MaterialStateProperty.all(EdgeInsets.all(14)),
//                               shape: MaterialStateProperty.all(
//                                   RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(9))),
//                             ),
//                             child: Text(
//                               "ابد ",
//                               style: TextStyle(fontSize: 19),
//                             ),
//                           ),
//                   ],
//                 ),

