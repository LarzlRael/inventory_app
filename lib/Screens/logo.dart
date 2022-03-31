import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String title;

  const Logo({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      width: 160,
      child: Column(
        children: [
          FadeIn(
            duration: Duration(milliseconds: 2000),
            child: Image(
              image: AssetImage('assets/logovaca.png'),
            ),
          ),
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
