// lib/models/coffee.dart
class Coffee {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final List<String> latteArtStyles;
  final bool isFeatured;
  final String category;
  
  Coffee({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.latteArtStyles,
    this.isFeatured = false,
    required this.category,
  });
}