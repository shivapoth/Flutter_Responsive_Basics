import 'package:flutter/material.dart';


class ResponsiveUI extends StatelessWidget {
  final Widget tabletView;
  final Widget mobileView;
  final Widget desktopView;

  const ResponsiveUI({super.key, 
    required this.tabletView,
    required this.mobileView,
    required this.desktopView,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileView;
      } else if (constraints.maxWidth < 800) {
        return tabletView;
      } else {
        return desktopView;
      }
    });
  }
}
