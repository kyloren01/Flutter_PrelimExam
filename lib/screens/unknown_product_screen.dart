import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routing/app_router.dart';

class UnknownProductScreen extends StatelessWidget {
  const UnknownProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product not found')),
      body: Center(
        child: FilledButton.icon(
          onPressed: () => context.go(AppRoutes.home),
          icon: const Icon(Icons.storefront_rounded),
          label: const Text('Back to shop'),
        ),
      ),
    );
  }
}
