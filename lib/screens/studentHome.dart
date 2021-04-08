import 'package:flutter/material.dart';

import '/widgets/responsive.dart';
import '/widgets/studentHomeComponents.dart';

class StudentHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// hero
            SizedBox(
              height: Responsive.height(context),
              child: Stack(
                children: [
                  if (!Responsive.isMobile(context))
                    Align(
                      alignment: Alignment.topRight,
                      child: HeroImage(),
                    ),
                  if (!Responsive.isMobile(context))
                    Align(
                      alignment: Alignment.centerLeft,
                      child: HeroTitle(),
                    ),

                  if (Responsive.isMobile(context))
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            height: 375,
                            width: 354,
                            child: HeroImage(),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: HeroTitle(),
                        ),
                      ],
                    ),

                  /// header
                  Header(),
                ],
              ),
            ),

            /// services
            FeatureTile(
              svgPath: 'assets/images/features.png',
            ),

            SizedBox(height: 64 * 2),

            /// features
            FeatureTile(
              svgPath: 'assets/images/services.png',
              isRight: false,
            ),
          ],
        ),
      ),
    );
  }
}
