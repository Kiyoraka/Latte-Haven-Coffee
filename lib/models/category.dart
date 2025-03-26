// lib/models/category.dart
class Category {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  
  Category({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
  });

  static List<Category> getSampleCategories() {
    return [
      Category(
        id: 'signature',
        name: 'Signature Lattes',
        imageUrl: 'assets/images/category_signature.jpg',
        description: 'Our most artistic and unique latte creations',
      ),
      Category(
        id: 'cappuccinos',
        name: 'Cappuccinos',
        imageUrl: 'assets/images/category_cappuccino.jpg',
        description: 'Classic cappuccinos with perfect microfoam',
      ),
      Category(
        id: 'flatwhites',
        name: 'Flat Whites',
        imageUrl: 'assets/images/category_flatwhite.jpg',
        description: 'Strong and silky with beautiful art',
      ),
      Category(
        id: 'mochas',
        name: 'Mochas',
        imageUrl: 'assets/images/category_mocha.jpg',
        description: 'Rich chocolate meets espresso and milk',
      ),
      Category(
        id: 'specialty',
        name: 'Specialty Lattes',
        imageUrl: 'assets/images/category_specialty.jpg',
        description: 'Unique flavors and seasonal creations',
      ),
    ];
  }
}