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
        id: 'nature-inspired',
        name: 'Nature Inspired',
        imageUrl: 'assets/images/category_nature.jpg',
        description: 'Lattes featuring beautiful natural designs like landscapes and leaves',
      ),
      Category(
        id: 'character-lattes',
        name: 'Character Lattes',
        imageUrl: 'assets/images/category_animals.jpg',
        description: 'Adorable and dynamic latte arts with animals and characters',
      ),
      Category(
        id: 'seasonal-specials',
        name: 'Seasonal Specials',
        imageUrl: 'assets/images/category_seasonal.jpg',
        description: 'Limited-time creations capturing the essence of the season',
      ),
      Category(
        id: 'artistic-lattes',
        name: 'Artistic Lattes',
        imageUrl: 'assets/images/category_artistic.jpg',
        description: 'Elegant and intricate latte art showcasing creative expression',
      ),
      Category(
        id: 'creative-designs',
        name: 'Creative Designs',
        imageUrl: 'assets/images/category_creative.jpg',
        description: 'Unique and unexpected latte art that sparks conversation',
      ),
      Category(
        id: 'scenic-designs',
        name: 'Scenic Designs',
        imageUrl: 'assets/images/category_scenic.jpg',
        description: 'Detailed landscape and cultural scenes brought to life in foam',
      ),
    ];
  }
}