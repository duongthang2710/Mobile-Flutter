import 'package:flutter/material.dart';

class Toji extends StatelessWidget {
  const Toji({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Image.asset(
            'assets/image/toji.webp',
            height: 800,
          ),
          Positioned(
            top: 320,
            left: 220,
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
