// lib/config/routes.dart
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/coffee_detail_screen.dart';
import '../screens/cart_screen.dart';
import '../screens/checkout_screen.dart';
import '../models/coffee.dart';

class AppRoutes {
  static const String home = '/';
  static const String cart = '/cart';
  static const String checkout = '/checkout';
  
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      
      case cart:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      
      case checkout:
        return MaterialPageRoute(builder: (_) => const CheckoutScreen());
      
      default:
        // Handle coffee detail routes or unknown routes
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Route not found!'),
            ),
          ),
        );
    }
  }

  // Navigation helper methods
  static void navigateToCoffeeDetail(BuildContext context, Coffee coffee) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CoffeeDetailScreen(coffee: coffee),
      ),
    );
  }

  static void navigateToCart(BuildContext context) {
    Navigator.pushNamed(context, cart);
  }

  static void navigateToCheckout(BuildContext context) {
    Navigator.pushNamed(context, checkout);
  }
}