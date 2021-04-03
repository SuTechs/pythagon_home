import 'package:flutter/material.dart';

import 'screens/studentHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pythagon',
      home: StudentHome(),
      // builder: (context, widget) => ResponsiveWrapper.builder(
      //   BouncingScrollWrapper.builder(context, widget!),
      //   defaultScale: true,
      //   breakpoints: [
      //     ResponsiveBreakpoint.autoScaleDown(650, name: MOBILE),
      //     ResponsiveBreakpoint.autoScaleDown(900, name: TABLET),
      //     ResponsiveBreakpoint.autoScaleDown(1200, name: TABLET),
      //   ],
      //   background: Container(color: Color(0xFFF5F5F5)),
      // ),
    );
  }
}
