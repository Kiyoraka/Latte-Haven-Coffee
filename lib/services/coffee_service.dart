// lib/services/coffee_service.dart
import '../models/coffee.dart';

class CoffeeService {
  static List<Coffee> getAll() {
    return [
      Coffee(
        id: '1',
        name: 'Swan Latte',
        description: 'Our signature latte featuring an elegant swan design crafted in microfoam.',
        price: 5.99,
        imageUrl: 'assets/images/swan_latte.jpg',
        latteArtStyles: ['Swan', 'Premium', 'Signature'],
        isFeatured: true,
        category: 'Signature Lattes',
      ),
      Coffee(
        id: '2',
        name: 'Rosetta Cappuccino',
        description: 'Classic cappuccino topped with a beautiful rosetta pattern.',
        price: 4.99,
        imageUrl: 'assets/images/rosetta_cappuccino.jpg',
        latteArtStyles: ['Rosetta', 'Classic', 'Bestseller'],
        isFeatured: true,
        category: 'Cappuccinos',
      ),
      Coffee(
        id: '3',
        name: 'Heart Mocha',
        description: 'Rich chocolate mocha with a cute heart latte art design.',
        price: 5.49,
        imageUrl: 'assets/images/heart_mocha.jpg',
        latteArtStyles: ['Heart', 'Chocolate', 'Sweet'],
        isFeatured: false,
        category: 'Mochas',
      ),
      Coffee(
        id: '4',
        name: 'Tulip Flat White',
        description: 'Strong flat white adorned with a tulip design.',
        price: 4.79,
        imageUrl: 'assets/images/tulip_flatwhite.jpg',
        latteArtStyles: ['Tulip', 'Strong', 'Classic'],
        isFeatured: false,
        category: 'Flat Whites',
      ),
      Coffee(
        id: '5',
        name: 'Bear Latte',
        description: 'A fun latte featuring a 3D bear face design that kids and adults love.',
        price: 6.49,
        imageUrl: 'assets/images/bear_latte.jpg',
        latteArtStyles: ['Bear', '3D Art', 'Fun'],
        isFeatured: true,
        category: 'Specialty Lattes',
      ),
    ];
  }

  static List<String> getCategories() {
    return [
      'All',
      'Signature Lattes',
      'Cappuccinos',
      'Flat Whites',
      'Mochas',
      'Specialty Lattes',
    ];
  }
}