import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: 132,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(16),
          backgroundColor: MaterialStateColor.resolveWith(
            (states) => Color(0xff7B68EE),
          ),
        ),
        onPressed: () {},
        child: Text(
          'Get Started',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
