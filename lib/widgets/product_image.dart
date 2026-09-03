import 'package:flutter/material.dart';

import '../data/product_data.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.product, required this.height});

  final Product product;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [product.primaryColor, product.secondaryColor],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 12,
            left: 14,
            child: Container(
              width: height * 0.16,
              height: height * 0.16,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.38),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Icon(product.icon, size: height * 0.48, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
