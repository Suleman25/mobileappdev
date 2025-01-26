class ApiConfig {
  static const String baseUrl = 'http://127.0.0.1:8000/api'; // For web access
  static const String mediaUrl = 'http://127.0.0.1:8000';

  // Auth endpoints
  static const String login = '/token/';
  static const String refreshToken = '/token/refresh/';
  static const String register = '/users/';

  // Product endpoints
  static const String products = '/products/';
  static const String reviews = '/review/';

  // Cart endpoints
  static const String cart = '/cart/';
  static const String addToCart = '/cart/add_item/';
  static const String removeFromCart = '/cart/remove_item/';

  // Order endpoints
  static const String orders = '/orders/';
  static const String updateOrderStatus = '/update_status/';

  // User endpoints
  static const String userProfile = '/users/me/';
}
