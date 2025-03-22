import 'dart:math';

import 'package:flutter/material.dart';

class TaskBox extends StatelessWidget {
  final String time;
  final String apmeridiem;
  final String content;
  final String taskcontent;

  const TaskBox({
    super.key,
    required this.time,
    required this.apmeridiem,
    required this.content,
    required this.taskcontent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420,
      height: 100,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    time,
                    style: TextStyle(fontSize: 22, color: Color(0xFF737373)),
                  ),
                  Text(
                    apmeridiem,
                    style: TextStyle(fontSize: 20, color: Color(0xFF858484)),
                  ),
                ],
              ),
              SizedBox(width: 40),
              Container(
                width: 10,
                height: 75,
                color: Color.fromRGBO(
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256),
                  1,
                ),
              ),
              SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    content,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xFF0E02C2),
                    ),
                  ),
                  Text(
                    taskcontent,
                    style: TextStyle(fontSize: 18, color: Color(0xFF737373)),
                  ),
                ],
              ),
            ],
          ),
          // Divider(
          //   color: Colors.black,
          //   thickness: 1,
          //   height: 20,
          // )
        ],
      ),
    );
  }
}
