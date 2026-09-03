import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobileScaffold,
    required this.tabletScaffold,
  });

  final Widget mobileScaffold;
  final Widget tabletScaffold;

  static const double tabletBreakpoint = 650;

  static bool isMobile(BuildContext context) {
    return MediaQuery.sizeOf(context).width < tabletBreakpoint;
  }

  static bool isTabletOrLarger(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= tabletBreakpoint;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < tabletBreakpoint) {
          return mobileScaffold;
        }

        return tabletScaffold;
      },
    );
  }
}
