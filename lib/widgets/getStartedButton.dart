import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final double fontSize;

  const GetStartedButton({
    Key? key,
    this.title = 'Get Started',
    this.height = 42,
    this.width = 132,
    this.fontSize = 14,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(16),
          backgroundColor: MaterialStateColor.resolveWith(
            (states) => Color(0xff7B68EE),
          ),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
