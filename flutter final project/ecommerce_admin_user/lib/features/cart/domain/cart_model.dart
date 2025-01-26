import '../../products/domain/product_model.dart';

class Cart {
  final int id;
  final User user;
  final List<CartItem> items;
  final double totalAmount;
  final DateTime createdAt;
  final DateTime updatedAt;

  Cart({
    required this.id,
    required this.user,
    required this.items,
    required this.totalAmount,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json['id'],
      user: User.fromJson(json['user']),
      items: (json['items'] as List)
          .map((item) => CartItem.fromJson(item))
          .toList(),
      totalAmount: double.parse(json['total_amount'].toString()),
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user': user.toJson(),
      'items': items.map((item) => item.toJson()).toList(),
      'total_amount': totalAmount,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }
}

class CartItem {
  final int id;
  final int cartId;
  final Product product;
  final int quantity;
  final double subtotal;

  CartItem({
    required this.id,
    required this.cartId,
    required this.product,
    required this.quantity,
    required this.subtotal,
  });

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      id: json['id'],
      cartId: json['cart'],
      product: Product.fromJson(json['product']),
      quantity: json['quantity'],
      subtotal: double.parse(json['subtotal'].toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cart': cartId,
      'product': product.toJson(),
      'quantity': quantity,
      'subtotal': subtotal,
    };
  }

  CartItem copyWith({
    int? id,
    int? cartId,
    Product? product,
    int? quantity,
    double? subtotal,
  }) {
    return CartItem(
      id: id ?? this.id,
      cartId: cartId ?? this.cartId,
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
      subtotal: subtotal ?? this.subtotal,
    );
  }
}
