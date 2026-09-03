import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import 'category_pill.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key, required this.onToggleTheme});

  final VoidCallback onToggleTheme;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shopping',
                    style: theme.textTheme.headlineLarge?.copyWith(
                      color: AppColors.orange,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Browse our curated collection of essentials',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 18),
            IconButton.filledTonal(
              tooltip: isDark ? 'Switch to light mode' : 'Switch to dark mode',
              onPressed: onToggleTheme,
              icon: Icon(
                isDark ? Icons.light_mode_rounded : Icons.dark_mode_rounded,
              ),
            ),
          ],
        ),
        const SizedBox(height: 18),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              CategoryPill(label: 'All', isSelected: true),
              CategoryPill(label: 'New'),
              CategoryPill(label: 'Popular'),
              CategoryPill(label: 'Deals'),
            ],
          ),
        ),
      ],
    );
  }
}
