import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Zamasu extends StatelessWidget {
  const Zamasu ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset(
                  'assets/image/zamasu.jpg',
                  height: 800,
                ),
              ],
            ),
          ),
          SizedBox(width: 30),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset(
                  'assets/image/zamasu.jpg',
                  height: 800,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
