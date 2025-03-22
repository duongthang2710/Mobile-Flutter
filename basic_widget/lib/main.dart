import 'dart:math';

import 'package:flutter/material.dart';
import 'canledar_box.dart';
import 'task_box.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late int _id;

  @override
  void initState(){
    super.initState();
    _id = 0;
  }
  final List<Map<String, dynamic>> events = [
    {
      "time": "07:00",
      "session": "AM",
      "title": "CTDL & GT",
      "description": "Nguyễn Duy Phương",
    },
    {
      "time": "09:00",
      "session": "AM",
      "title": "Lí thuyết thông tin",
      "description": "Phạm Văn Sự",
    },
    {
      "time": "13:00",
      "session": "PM",
      "title": "Tư tưởng HCM",
      "description": "Phạm Thị Khánh",
    },
    {
      "time": "15:00",
      "session": "PM",
      "title": "Toán rời rạc 2",
      "description": "Nguyễn Tất Thắng",
    },
  ];
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(

          floatingActionButton: Container(

            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(100)
            ),

            child: InkWell(
              onTap: () => setState(() {
                _id = Random().nextInt(4);
              }),
              child: Center(
                child: Text(
                  "+",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                  ),
                ),
              ),
            ),
          ),

          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              _id.toString(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            centerTitle: true,
            leading: Text("leading"),
          ),



          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CalenderBox(text1: "20", text2: "Mon"),
                      CalenderBox(text1: "20", text2: "Mon"),
                      CalenderBox(text1: "20", text2: "Mon"),
                      CalenderBox(text1: "20", text2: "Mon"),
                      CalenderBox(text1: "20", text2: "Mon"),
                      CalenderBox(text1: "20", text2: "Mon"),
                      CalenderBox(text1: "20", text2: "Mon"),
                      CalenderBox(text1: "20", text2: "Mon"),

                    ]

                  ),
                ),
                SizedBox(height: 80),
                TaskBox(
                    time: events[_id]["time"],
                    apmeridiem: events[_id]["session"],
                    content: events[_id]["title"],
                    taskcontent: events[_id]["description"]
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
