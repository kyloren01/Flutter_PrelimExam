import 'package:flutter/material.dart';

import 'responsive_shop_scaffold.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key, required this.onToggleTheme});

  final VoidCallback onToggleTheme;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return ResponsiveShopScaffold(
      onToggleTheme: onToggleTheme,
      columnCount: 2,
      tileHeight: width < 390 ? 304 : 322,
      horizontalPadding: 20,
      gridSpacing: 16,
    );
  }
}
