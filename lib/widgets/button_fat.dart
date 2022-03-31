import 'package:flutter/material.dart';

class FatButton extends StatelessWidget {
  final Widget title;
  final VoidCallback? onPressed;

  @override
  const FatButton({
    required this.title,
    required this.onPressed,
    /* required this.onPressed, */
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 4,
        primary: Colors.blue,
        shape: const StadiumBorder(),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        width: double.infinity,
        child: Center(
          child: title,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
