import 'package:flutter/foundation.dart' show immutable;
import 'package:flutter_dotenv/flutter_dotenv.dart';

@immutable
class Constants {
  static String baseUrl = dotenv.get('BASE_URL', fallback: '');
  static String weeklyWeatherUrl = dotenv.get('WEEKLY_URL', fallback: '');
  
  static String apiKey = dotenv.get('API_KEY', fallback: '');
  static String apiKey2 = dotenv.get('API_KEY_2', fallback: '');
}