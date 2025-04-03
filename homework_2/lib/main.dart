import 'package:flutter/material.dart';
import 'package:homework_2/gojo.dart';
import 'package:homework_2/zamasu.dart';
import 'package:homework_2/ace.dart';
import 'package:homework_2/toji.dart';
import 'package:homework_2/virus.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: ListView(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            children: [
              Column(
                children: [
                  Gojo(),
                  SizedBox(
                    height: 20,
                  ),
                  Zamasu(),
                  SizedBox(
                    height: 20,
                  ),
                  Ace(),
                  SizedBox(
                    height: 20,
                  ),
                  Toji(),
                  SizedBox(
                    height: 20,
                  ),
                  Virus(),

                ],
              ),
            ]
          ),
        ),
      ),
    );
  }
}
