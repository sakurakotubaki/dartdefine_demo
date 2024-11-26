import 'package:dartdefine_demo/api_environment.dart';
import 'package:dartdefine_demo/example/api.dart';

class ApiProvider {
  static ApiClient get client {
    final baseUrl = environment['baseUrl'];
    if (baseUrl == null) {
      throw Exception('Base URL is not configured');
    }
    return ApiClient(baseUrl: baseUrl);
  }
}