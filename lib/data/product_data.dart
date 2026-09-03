import 'package:flutter/material.dart';

class Product {
  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.longDescription,
    required this.price,
    required this.icon,
    required this.primaryColor,
    required this.secondaryColor,
    required this.meta,
  });

  final String id;
  final String name;
  final String description;
  final String longDescription;
  final String price;
  final IconData icon;
  final Color primaryColor;
  final Color secondaryColor;
  final List<String> meta;
}

const products = [
  Product(
    id: 'aurora-headphones',
    name: 'Aurora Headphones',
    description: 'Wireless audio with soft cushions.',
    longDescription: 'Immersive over-ear headphones with active noise control, fast charging, and balanced sound for daily listening.',
    price: '\$129',
    icon: Icons.headphones_rounded,
    primaryColor: Color(0xFFFFB13B),
    secondaryColor: Color(0xFFFF6B35),
    meta: ['4.8 rating', '24 hr battery', 'Free case'],
  ),
  Product(
    id: 'urban-backpack',
    name: 'Urban Backpack',
    description: 'Compact carry with padded storage.',
    longDescription: 'A water-resistant backpack with laptop padding, quick-access pockets, and a structured shape for school or work.',
    price: '\$74',
    icon: Icons.backpack_rounded,
    primaryColor: Color(0xFFFFC65A),
    secondaryColor: Color(0xFFFF8A1D),
    meta: ['15 inch laptop', 'Water resistant', '6 pockets'],
  ),
  Product(
    id: 'smart-watch',
    name: 'Pulse Watch',
    description: 'Fitness tracking in a clean shell.',
    longDescription: 'A lightweight smart watch with health tracking, notification support, and a bright display for everyday use.',
    price: '\$199',
    icon: Icons.watch_rounded,
    primaryColor: Color(0xFFFF7A45),
    secondaryColor: Color(0xFFFFA21A),
    meta: ['GPS ready', 'Sleep tracking', '5 day battery'],
  ),
  Product(
    id: 'desk-lamp',
    name: 'Glow Desk Lamp',
    description: 'Warm light with touch controls.',
    longDescription: 'A dimmable desk lamp with warm and cool modes, a compact base, and a clean profile for focused workspaces.',
    price: '\$48',
    icon: Icons.light_rounded,
    primaryColor: Color(0xFFFFA21A),
    secondaryColor: Color(0xFFFFD166),
    meta: ['3 color modes', 'Touch dimmer', 'USB-C power'],
  ),
  Product(
    id: 'sneakers',
    name: 'Sprint Sneakers',
    description: 'Breathable everyday runners.',
    longDescription: 'Low-profile sneakers with cushioned soles, flexible mesh, and a grippy base for commutes and casual walks.',
    price: '\$96',
    icon: Icons.directions_run_rounded,
    primaryColor: Color(0xFFFF8A1D),
    secondaryColor: Color(0xFFFF5630),
    meta: ['Foam sole', 'Mesh upper', 'True fit'],
  ),
  Product(
    id: 'coffee-kit',
    name: 'Brew Kit',
    description: 'Portable pour-over coffee tools.',
    longDescription: 'A compact brewing kit with a stainless dripper, insulated tumbler, and travel pouch for fresh coffee anywhere.',
    price: '\$58',
    icon: Icons.coffee_rounded,
    primaryColor: Color(0xFFFFB545),
    secondaryColor: Color(0xFFFF7A00),
    meta: ['Steel dripper', 'Travel pouch', 'Easy rinse'],
  ),
];

Product? productById(String? id) {
  for (final product in products) {
    if (product.id == id) {
      return product;
    }
  }

  return null;
}
