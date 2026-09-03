import 'package:flutter/material.dart';

import '../responsiveness/mobile_scaffold.dart';
import '../responsiveness/responsive_layout.dart';
import '../responsiveness/tablet_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.onToggleTheme});

  final VoidCallback onToggleTheme;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileScaffold: MobileScaffold(onToggleTheme: onToggleTheme),
      tabletScaffold: TabletScaffold(onToggleTheme: onToggleTheme),
    );
  }
}
