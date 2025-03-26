// lib/services/coffee_service.dart
import '../models/coffee.dart';

class CoffeeService {
  static List<Coffee> getAll() {
    return [
      Coffee(
        id: '1',
        name: 'Golden Fern Latte',
        description: 'A beautifully crafted latte featuring an intricate fern design in rich microfoam.',
        price: 5.99,
        imageUrl: 'assets/images/golden_fern_latte.jpg',
        latteArtStyles: ['Fern', 'Premium', 'Signature'],
        isFeatured: true,
        category: 'Nature Inspired',
      ),
      Coffee(
        id: '2',
        name: 'Woolly Sheep Latte',
        description: 'Adorable latte art featuring a cute, fluffy sheep with delicate foam detailing.',
        price: 5.79,
        imageUrl: 'assets/images/sheep_latte.jpg',
        latteArtStyles: ['Animal', 'Cute', '3D Foam'],
        isFeatured: true,
        category: 'Character Lattes',
      ),
      Coffee(
        id: '3',
        name: 'Maple Leaf Autumn Brew',
        description: 'A seasonal specialty with a perfect Canadian maple leaf design capturing autumn\'s essence.',
        price: 5.49,
        imageUrl: 'assets/images/maple_leaf_latte.jpg',
        latteArtStyles: ['Leaf', 'Seasonal', 'Nature'],
        isFeatured: true,
        category: 'Seasonal Specials',
      ),
      Coffee(
        id: '4',
        name: 'Blooming Rose Cappuccino',
        description: 'Elegant cappuccino topped with a meticulously crafted 3D rose design.',
        price: 6.29,
        imageUrl: 'assets/images/rose_latte.jpg',
        latteArtStyles: ['Floral', 'Elegant', '3D Design'],
        isFeatured: true,
        category: 'Artistic Lattes',
      ),
      Coffee(
        id: '5',
        name: 'Majestic Stallion Latte',
        description: 'A powerful latte art portraying a graceful white horse with flowing mane.',
        price: 6.49,
        imageUrl: 'assets/images/horse_latte.jpg',
        latteArtStyles: ['Animal', 'Realistic', 'Dynamic'],
        isFeatured: true,
        category: 'Character Lattes',
      ),
      Coffee(
        id: '6',
        name: 'Business Brew',
        description: 'Professional latte with a stylish tie design, perfect for your morning meeting.',
        price: 5.39,
        imageUrl: 'assets/images/tie_latte.jpg',
        latteArtStyles: ['Minimal', 'Professional', 'Geometric'],
        isFeatured: false,
        category: 'Creative Designs',
      ),
      Coffee(
        id: '7',
        name: 'Whispers of Grace Latte',
        description: 'An artistic latte featuring a serene woman with flowing, elegant hair.',
        price: 6.69,
        imageUrl: 'assets/images/woman_latte.jpg',
        latteArtStyles: ['Portrait', 'Artistic', 'Elegant'],
        isFeatured: true,
        category: 'Artistic Lattes',
      ),
      Coffee(
        id: '8',
        name: 'Zen Garden Latte',
        description: 'A tranquil latte art depicting a traditional multi-level Japanese pagoda in a misty landscape.',
        price: 6.59,
        imageUrl: 'assets/images/pagoda_latte.jpg',
        latteArtStyles: ['Landscape', 'Cultural', 'Detailed'],
        isFeatured: true,
        category: 'Scenic Designs',
      ),
      Coffee(
        id: '9',
        name: 'Mountain Retreat Brew',
        description: 'A scenic latte featuring a majestic mountain landscape with pine trees.',
        price: 5.89,
        imageUrl: 'assets/images/mountain_latte.jpg',
        latteArtStyles: ['Landscape', 'Nature', 'Scenic'],
        isFeatured: true,
        category: 'Nature Inspired',
      ),
      Coffee(
        id: '10',
        name: 'Hummingbird Haven',
        description: 'A delicate latte art showcasing a graceful hummingbird in mid-flight.',
        price: 5.99,
        imageUrl: 'assets/images/hummingbird_latte.jpg',
        latteArtStyles: ['Animal', 'Delicate', 'Dynamic'],
        isFeatured: true,
        category: 'Character Lattes',
      ),
    ];
  }

  static List<String> getCategories() {
    return [
      'All',
      'Nature Inspired',
      'Character Lattes',
      'Seasonal Specials',
      'Artistic Lattes',
      'Creative Designs',
      'Scenic Designs',
    ];
  }
}