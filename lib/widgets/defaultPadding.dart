import 'package:flutter/material.dart';
import 'package:pythagon_home/widgets/responsive.dart';

class DefaultAnimatedPadding extends StatelessWidget {
  final Widget child;

  const DefaultAnimatedPadding({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: Duration(seconds: 1),
      curve: Curves.easeIn,
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.values(
          context: context,
          desktop: 64 * 2.5,
          tablet: 64,
          mobile: 32,
        ),
      ),
      child: child,
    );
  }
}
