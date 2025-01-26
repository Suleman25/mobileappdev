import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/services/api_service.dart';
import '../../../core/config/api_config.dart';
import '../../products/domain/product_model.dart';

class AuthService {
  final ApiService _apiService;
  Future<SharedPreferences> get _prefs => SharedPreferences.getInstance();

  AuthService(this._apiService);

  Future<void> login(String username, String password, bool isAdmin) async {
    try {
      final response = await _apiService.post(
        ApiConfig.login,
        {
          'username': username,
          'password': password,
        },
      );

      final user = await getUserProfile();
      if (user.isStaff != isAdmin) {
        throw ApiException(
          statusCode: 403,
          message: 'Unauthorized access',
        );
      }

      final prefs = await _prefs;
      await prefs.setString('token', response['access']);
      await prefs.setString('refresh_token', response['refresh']);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> register({
    required String username,
    required String email,
    required String password,
    required String confirmPassword,
    required String firstName,
    required String lastName,
    bool isAdmin = false,
  }) async {
    try {
      await _apiService.post(
        ApiConfig.register,
        {
          'username': username,
          'email': email,
          'password': password,
          'confirm_password': confirmPassword,
          'first_name': firstName,
          'last_name': lastName,
          'is_staff': isAdmin,
        },
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logout() async {
    final prefs = await _prefs;
    await prefs.remove('token');
    await prefs.remove('refresh_token');
  }

  Future<User> getUserProfile() async {
    try {
      final response = await _apiService.get(ApiConfig.userProfile);
      return User.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> isLoggedIn() async {
    final prefs = await _prefs;
    return prefs.getString('token') != null;
  }

  Future<bool> isAdmin() async {
    try {
      final user = await getUserProfile();
      return user.isStaff;
    } catch (e) {
      return false;
    }
  }

  Future<void> refreshToken() async {
    try {
      final prefs = await _prefs;
      final refreshToken = prefs.getString('refresh_token');

      if (refreshToken == null) {
        throw ApiException(
          statusCode: 401,
          message: 'No refresh token found',
        );
      }

      final response = await _apiService.post(
        ApiConfig.refreshToken,
        {'refresh': refreshToken},
      );

      await prefs.setString('token', response['access']);
    } catch (e) {
      await logout();
      rethrow;
    }
  }
}
