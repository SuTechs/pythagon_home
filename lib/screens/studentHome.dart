import 'package:flutter/material.dart';

import '/widgets/responsive.dart';
import '/widgets/studentHomeComponents.dart';

class StudentHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// become teacher
              BecomeTeacherFloat(),

              /// hero
              Stack(
                children: [
                  /// image
                  if (!Responsive.isMobile(context))
                    Align(
                      alignment: Alignment.topRight,
                      child: HeroImage(),
                    ),

                  /// header
                  if (!Responsive.isMobile(context))
                    Align(
                      alignment: Alignment.topLeft,
                      child: Header(),
                    ),

                  /// hero title
                  if (!Responsive.isMobile(context))
                    Positioned(
                      top: Responsive.height(context) * 0.25,
                      child: HeroTitle(),
                    ),

                  ///----------------------------///
                  /// mobile view
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
                  if (Responsive.isMobile(context)) Header(),
                ],
              ),
              SizedBox(height: 64),

              /// services
              FeatureTile(
                svgPath: 'assets/images/services.png',
                type: 'services',
                title: 'The future\nof learning',
                desc:
                    'Need help in learning? We offer the best services for assignment/homework help, live session, and many more from the best tutors & experts.',
              ),
              SizedBox(height: 64),

              /// features
              FeatureTile(
                  isRight: false,
                  svgPath: 'assets/images/features.png',
                  type: 'features',
                  title: 'Why\nPythagon?',
                  desc:
                      "Learning becomes more interesting when you have the best teachers around you."),
              SizedBox(height: 64),

              /// how we work
              HowWeWork(),
              SizedBox(height: 64),

              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
