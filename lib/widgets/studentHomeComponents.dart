import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '/widgets/responsive.dart';
import 'defaultPadding.dart';
import 'getStartedButton.dart';

/// become teacher floating tile
class BecomeTeacherFloat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      width: Responsive.width(context),
      height: 40,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Become Pythagon Experts and earn while you learn!',
              style: TextStyle(
                fontSize: Responsive.isMobile(context) ? 10 : 15,
                fontWeight: Responsive.isMobile(context)
                    ? FontWeight.w400
                    : FontWeight.w600,
                color: const Color(0xff292d34),
                letterSpacing: Responsive.isMobile(context) ? 0.8 : 1.8,
              ),
            ),
            SizedBox(width: Responsive.isMobile(context) ? 4 : 16),
            GetStartedButton(
              title: 'Join now!',
              height: Responsive.isMobile(context) ? 30 * 0.8 : 30,
              width: Responsive.isMobile(context) ? 92 * 0.8 : 92,
              fontSize: Responsive.isMobile(context) ? 9 : 11,
            ),
          ],
        ),
      ),
    );
  }
}

/// Header
class Header extends StatelessWidget {
  final menus = ['Tutors', 'Sign in'];

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
              for (String menu in menus)
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
                    menu,
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

/// body feature tile

class FeatureTile extends StatelessWidget {
  final String title;
  final String desc;
  final String type;
  final String svgPath;
  final bool isRight;

  const FeatureTile({
    Key? key,
    required this.svgPath,
    this.isRight = true,
    required this.title,
    required this.desc,
    required this.type,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultAnimatedPadding(
      child: Responsive.isMobile(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// title
                Text(
                  type.toUpperCase(),
                  style: TextStyle(
                    fontSize: 8,
                    color: const Color(0xff7b68ee),
                    fontWeight: FontWeight.w700,
                  ),
                ),

                /// headline
                Text(
                  title,
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
                  desc,
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
                if (isRight) SizedBox(width: 64),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// title
                      Text(
                        type.toUpperCase(),
                        style: TextStyle(
                          fontSize: 8,
                          color: const Color(0xff7b68ee),
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      /// headline
                      Text(
                        title,
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
                        desc,
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

/// how we work
class HowWeWork extends StatelessWidget {
  static const _kDesc =
      "Customer support is out highest priority. We are here to answer you question via Support, Docs, Video Demos, and 24x7 Live Chat.";

  @override
  Widget build(BuildContext context) {
    final tiles = [
      TileWithTextAndButton(
        color: const Color(0xff7b68ee),
        title: 'Post Question',
        image: 'assets/images/postQ.png',
      ),
      TileWithTextAndButton(
        color: const Color(0xffEA6EAE),
        title: 'Get Expert Help',
        image: 'assets/images/expertHelp.png',
      ),
      TileWithTextAndButton(
        color: const Color(0xffF9C833),
        title: 'Excel!',
        image: 'assets/images/excel.png',
      ),
    ];

    final texts = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        /// headline
        Text(
          'Got questions?',
          style: TextStyle(
            fontSize: 42,
            color: Colors.white,
            letterSpacing: 2,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: Responsive.values(
            context: context,
            desktop: 24,
            tablet: 20,
            mobile: 16,
          ),
        ),

        /// divider
        Container(
          width: Responsive.isMobile(context) ? 75 : 91.0,
          height: 6.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.0),
            color: const Color(0xffFFCB00),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
              ),
            ],
          ),
        ),

        SizedBox(
          height: Responsive.values(
            context: context,
            desktop: 24,
            tablet: 20,
            mobile: 16,
          ),
        ),

        SizedBox(
          width: Responsive.isMobile(context) ? 500 : 300,
          child: Text(
            _kDesc,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              letterSpacing: 0.7,
              height: 1.5,
            ),
          ),
        ),
      ],
    );

    final w = Container(
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: const Color(0xff945cf4),
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Responsive.isMobile(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 16),
                texts,
                SizedBox(height: 16),

                /// slider
                TileSlider(tiles: tiles),
                SizedBox(height: 16),
              ],
            )
          : Row(
              children: [
                Expanded(
                  child: texts,
                  flex: 2,
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: tiles,
                  ),
                )
              ],
            ),
    );

    return Responsive.isMobile(context) ? w : DefaultAnimatedPadding(child: w);
  }
}

class TileWithTextAndButton extends StatelessWidget {
  final Color color;
  final String image;
  final String title;

  const TileWithTextAndButton(
      {Key? key, required this.color, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.isMobile(context) ? 330 : 187,
      width: Responsive.isMobile(context) ? 330 : 187,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              image,
            ),
          ),
          Container(
            height: Responsive.isMobile(context) ? 92 : 52,
            width: Responsive.isMobile(context) ? 262 : 148,
            // padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: color,
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: Responsive.isMobile(context) ? 20 : 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class TileSlider extends StatefulWidget {
  final List<TileWithTextAndButton> tiles;

  const TileSlider({Key? key, required this.tiles}) : super(key: key);
  @override
  _TileSliderState createState() => _TileSliderState();
}

class _TileSliderState extends State<TileSlider> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        items: widget.tiles,
        options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      SizedBox(height: 8),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < widget.tiles.length; i++)
            Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == i ? Colors.white : Colors.white30,
              ),
            ),
        ],
      ),
    ]);
  }
}

/// footer
class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        SizedBox(height: 12),
        AnimatedPadding(
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
                  SvgPicture.asset(
                    'assets/icons/logo.svg',
                    height: 60,
                  ),
                  Text(
                    'Ythagon'.toUpperCase(),
                    style: TextStyle(
                      fontSize: Responsive.values(
                        context: context,
                        desktop: 20,
                        tablet: 18,
                        mobile: 16,
                      ),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),

              Spacer(),

              /// menu
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset('assets/icons/facebbok.png', height: 20),
                      SizedBox(width: 16),
                      Image.asset('assets/icons/twitter.png', height: 20),
                      SizedBox(width: 16),
                      Image.asset('assets/icons/instagram.png', height: 20),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    '©2021 Pythagon | Privacy | Terms',
                    style: TextStyle(
                      color: const Color(0xff7e8390),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
