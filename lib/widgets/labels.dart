import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String route;
  final String title;
  final String subTitle;
  const Labels({
    required this.route,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: Duration(milliseconds: 500),
      child: Column(
        children: [
          Text(
            this.subTitle,
            style: TextStyle(
                color: Colors.white54,
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 10),
          GestureDetector(
            child: Text(
              this.title,
              style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, route);
            },
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              /* Navigator.pushNamed(context, 'forgotPassword'); */
            },
            child: Text(
              'Olvide mi contraseña',
              style: TextStyle(fontWeight: FontWeight.w200, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
