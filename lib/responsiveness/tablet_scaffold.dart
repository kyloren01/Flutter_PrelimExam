import 'package:flutter/material.dart';

import 'responsive_shop_scaffold.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key, required this.onToggleTheme});

  final VoidCallback onToggleTheme;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        return ResponsiveShopScaffold(
          onToggleTheme: onToggleTheme,
          columnCount: _columnCountForWidth(width),
          tileHeight: width < 980 ? 342 : 358,
          horizontalPadding: width < 980 ? 20 : 28,
          gridSpacing: width < 980 ? 16 : 18,
        );
      },
    );
  }

  int _columnCountForWidth(double width) {
    if (width < 980) {
      return 3;
    }
    if (width < 1280) {
      return 4;
    }
    return 5;
  }
}
