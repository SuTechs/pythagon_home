import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '/widgets/responsive.dart';

class StudentHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/images/heroImage.png',
                height: Responsive.values(
                  context: context,
                  desktop: null,
                  tablet: null,
                  mobile: 375,
                ),
                width: Responsive.values(
                  context: context,
                  desktop: null,
                  tablet: null,
                  mobile: 354,
                ),
              ),
            ],
          ),
          Header(),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: Duration(seconds: 1),
      curve: Curves.easeIn,
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.values(
          context: context,
          desktop: 64 * 2,
          tablet: 64,
          mobile: 32,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          /// logo
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset('assets/icons/logo.svg'),
              Text(
                'Ythagon'.toUpperCase(),
                style: TextStyle(
                  fontSize: Responsive.values(
                    context: context,
                    desktop: 24,
                    tablet: 22,
                    mobile: 18,
                  ),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 4,
                ),
              ),
            ],
          ),

          Spacer(),

          /// menu
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              for (int i = 0; i < 5; i++)
                AnimatedPadding(
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  padding: EdgeInsets.only(
                    left: Responsive.values(
                      context: context,
                      desktop: 16,
                      tablet: 8,
                      mobile: 4,
                    ),
                  ),
                  child: Text(
                    'Product',
                    style: TextStyle(
                        fontSize: Responsive.values(
                          context: context,
                          desktop: 16,
                          tablet: 14,
                          mobile: 12,
                        ),
                        fontWeight: FontWeight.w500),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
