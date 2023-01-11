import 'package:flutter/material.dart';
import 'package:my_first_app/homePage.dart';

import 'desktopPage.dart';
class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          var width = constraints.maxWidth;
          var height = constraints.maxHeight;

          if (width > 600) {
            // Return a layout for larger screens
            return DesktopPage();
          } else {
            // Return a layout for smaller screens
            return const HomePage();
          }
        },
      ),
    );
  }
}
