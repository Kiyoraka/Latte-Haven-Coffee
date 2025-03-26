// lib/models/order.dart
import 'package:flutter/foundation.dart';
import 'coffee.dart';

class CartItem {
  final Coffee coffee;
  final int quantity;
  final String? specialInstructions;
  final List<String>? customizations;

  CartItem({
    required this.coffee,
    this.quantity = 1,
    this.specialInstructions,
    this.customizations,
  });

  double get totalPrice => coffee.price * quantity;

  CartItem copyWith({
    Coffee? coffee,
    int? quantity,
    String? specialInstructions,
    List<String>? customizations,
  }) {
    return CartItem(
      coffee: coffee ?? this.coffee,
      quantity: quantity ?? this.quantity,
      specialInstructions: specialInstructions ?? this.specialInstructions,
      customizations: customizations ?? this.customizations,
    );
  }
}

class Order extends ChangeNotifier {
  final List<CartItem> _items = [];
  String? customerName;
  String? phoneNumber;
  bool isPickup = true; // True for pickup, false for delivery

  List<CartItem> get items => List.unmodifiable(_items);

  int get itemCount => _items.length;

  double get subtotal => _items.fold(0, (sum, item) => sum + item.totalPrice);

  double get tax => subtotal * 0.08; // 8% tax

  double get total => subtotal + tax;

  bool get isEmpty => _items.isEmpty;

  void addItem(CartItem item) {
    // Check if coffee already exists in cart
    final existingIndex = _items.indexWhere(
      (cartItem) => cartItem.coffee.id == item.coffee.id,
    );

    if (existingIndex >= 0) {
      // Update quantity if already in cart
      final existingItem = _items[existingIndex];
      _items[existingIndex] = existingItem.copyWith(
        quantity: existingItem.quantity + item.quantity,
      );
    } else {
      // Add new item if not in cart
      _items.add(item);
    }
    notifyListeners();
  }

  void removeItem(String coffeeId) {
    _items.removeWhere((item) => item.coffee.id == coffeeId);
    notifyListeners();
  }

  void updateQuantity(String coffeeId, int quantity) {
    final index = _items.indexWhere((item) => item.coffee.id == coffeeId);
    if (index >= 0) {
      if (quantity <= 0) {
        _items.removeAt(index);
      } else {
        _items[index] = _items[index].copyWith(quantity: quantity);
      }
      notifyListeners();
    }
  }

  void clear() {
    _items.clear();
    customerName = null;
    phoneNumber = null;
    isPickup = true;
    notifyListeners();
  }

  void setCustomerInfo({
    required String name,
    required String phone,
    required bool pickup,
  }) {
    customerName = name;
    phoneNumber = phone;
    isPickup = pickup;
    notifyListeners();
  }
}