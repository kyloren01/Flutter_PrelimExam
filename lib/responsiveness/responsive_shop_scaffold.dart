import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../data/product_data.dart';
import '../routing/app_router.dart';
import '../theme/app_theme.dart';
import '../widgets/home_header.dart';
import '../widgets/product_card.dart';
import '../widgets/shop_footer.dart';
import '../widgets/shop_navbar.dart';

class ResponsiveShopScaffold extends StatelessWidget {
  const ResponsiveShopScaffold({
    super.key,
    required this.onToggleTheme,
    required this.columnCount,
    required this.tileHeight,
    required this.horizontalPadding,
    required this.gridSpacing,
  });

  final VoidCallback onToggleTheme;
  final int columnCount;
  final double tileHeight;
  final double horizontalPadding;
  final double gridSpacing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ShopNavbar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(AppRoutes.cart),
        tooltip: 'Open cart',
        backgroundColor: AppColors.orange,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        child: const Icon(Icons.shopping_bag_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const ShopBottomBar(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.fromLTRB(
                horizontalPadding,
                18,
                horizontalPadding,
                0,
              ),
              sliver: SliverToBoxAdapter(
                child: HomeHeader(onToggleTheme: onToggleTheme),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 22)),
            SliverPadding(
              padding: EdgeInsets.fromLTRB(
                horizontalPadding,
                0,
                horizontalPadding,
                104,
              ),
              sliver: SliverGrid.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columnCount,
                  crossAxisSpacing: gridSpacing,
                  mainAxisSpacing: gridSpacing,
                  mainAxisExtent: tileHeight,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(product: products[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
