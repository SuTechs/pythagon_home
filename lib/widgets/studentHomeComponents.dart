import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '/widgets/responsive.dart';
import 'defaultPadding.dart';
import 'getStartedButton.dart';

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
          tablet: 60,
          mobile: 28,
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

class HeroImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/heroImage.png',
      // height: Responsive.values(
      //   context: context,
      //   desktop: Responsive.height(context),
      //   tablet: 375,
      //   mobile: 375,
      // ),
      // height: Responsive.height(context),
      // width: Responsive.values(
      //
      //   context: context,
      //   desktop: 0.5 * Responsive.width(context),
      //   tablet: 354,
      //   mobile: 354,
      // ),
      // width: 0.5 * Responsive.width(context),
    );
  }
}

class HeroTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultAnimatedPadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          /// title
          Text(
            'Addicted\nto excellence',
            style: TextStyle(
              fontSize: Responsive.values(
                context: context,
                desktop: 60,
                tablet: 48,
                mobile: 38,
              ),
              fontWeight: FontWeight.bold,
              letterSpacing: 1.6,
            ),
          ),
          SizedBox(height: 16),

          /// subtitle
          Text(
            'Learn today for better tomorrow',
            style: TextStyle(
              fontSize: Responsive.values(
                context: context,
                desktop: 20,
                tablet: 18,
                mobile: 16,
              ),
              letterSpacing: 2.5,
            ),
          ),
          SizedBox(height: 18),

          /// email field

          Container(
            width: 364,
            height: 41,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: const Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x38000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: const Color(0xffed8081),
                  ),
                ),
                SizedBox(width: 12),
                Icon(
                  Icons.email_outlined,
                  color: const Color(0xffed8081),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: const Color(0xff9ca0a8),
                        letterSpacing: 2.4,
                      ),
                      hintText: 'Enter your email address',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(0),
                      isDense: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18),

          /// get started button

          GetStartedButton(),
          SizedBox(height: 16),

          /// online homework/assignments help

          Text(
            'Online Homework / Assignments Help',
            style: TextStyle(
              fontSize: 15,
              letterSpacing: 2.25,
              color: Colors.black54,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 16),

          /// icons with description

          Row(
            children: [
              /// 24 / 7
              IconTileText(
                path: 'assets/icons/clock.svg',
                title: '24 / 7',
              ),

              /// live session
              IconTileText(
                path: 'assets/icons/liveSession.svg',
                title: 'Live Session',
              ),

              /// expert tutors
              IconTileText(
                path: 'assets/icons/expertTeacher.svg',
                title: 'Expert Tutors',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconTileText extends StatelessWidget {
  final String path;
  final String title;

  const IconTileText({Key? key, required this.path, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: Responsive.isMobile(context) ? 16 : 22,
          child: SvgPicture.asset(
            path,
          ),
        ),
        SizedBox(width: Responsive.isMobile(context) ? 4 : 8),
        Text(
          title,
          style: TextStyle(
            fontSize: Responsive.isMobile(context) ? 12 : 15,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: Responsive.isMobile(context) ? 8 : 16),
      ],
    );
  }
}

class FeatureTile extends StatelessWidget {
  final String svgPath;
  final bool isRight;

  const FeatureTile({Key? key, required this.svgPath, this.isRight = true})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultAnimatedPadding(
      child: Responsive.isMobile(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// title
                Text(
                  'SERVICES',
                  style: TextStyle(
                    fontSize: 8,
                    color: const Color(0xff7b68ee),
                    fontWeight: FontWeight.w700,
                  ),
                ),

                /// headline
                Text(
                  'The future \nof learning',
                  style: TextStyle(
                    fontSize: 42,
                    color: const Color(0xff292d34),
                    letterSpacing: 2,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 24),

                /// divider
                Container(
                  width: Responsive.isMobile(context) ? 75 : 91.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: const Color(0xff9989fb),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 24),

                /// image
                Image.asset(svgPath),

                SizedBox(height: 24),
                Text(
                  'Need help in learning? We offer the best services for assignment/homework help, live session, and many more from the best tutors & experts.',
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color(0xff9F9F9F),
                    height: 1.2,
                  ),
                ),
                SizedBox(height: 24),
                GetStartedButton(),
              ],
            )
          : Row(
              textDirection: isRight ? TextDirection.ltr : TextDirection.rtl,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      svgPath,
                    ),
                  ),
                ),
                if (isRight && Responsive.width(context) < 1250)
                  SizedBox(width: 32),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// title
                      Text(
                        'SERVICES',
                        style: TextStyle(
                          fontSize: 8,
                          color: const Color(0xff7b68ee),
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      /// headline
                      Text(
                        'The future \nof learning',
                        style: TextStyle(
                          fontSize: 50,
                          color: const Color(0xff292d34),
                          letterSpacing: 4,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 24),

                      /// divider
                      Container(
                        width: 91.0,
                        height: 6.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: const Color(0xff9989fb),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 32),

                      GetStartedButton(),
                      SizedBox(height: 24),

                      Text(
                        'Need help in learning? We offer the best services for\nassignment/homework help, live session, and many\nmore from the best tutors & experts.',
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color(0xff9F9F9F),
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
