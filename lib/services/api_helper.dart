import 'package:dio/dio.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/models/hourly_weather.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/models/weekly_weather.dart';
import 'package:weather_app/services/geolocator.dart';
import 'package:weather_app/utils/logging.dart';

class ApiHelper {
  static double lat = 0.0;
  static double lon = 0.0;

  static final dio = Dio();

  static Future<void> fetchLocation() async {
    final location = await getLocation();
    lat = location.latitude;
    lon = location.longitude;
  }

  static Future<Weather> getCurrentWeather() async {
    await fetchLocation();
    final url = _constructWeatherUrl();
    final response = await _fetchData(url);
    return Weather.fromJson(response);
  }

  static Future<HourlyWeather> getHourlyForecast() async {
    await fetchLocation();
    final url = _constructForecastUrl();
    final response = await _fetchData(url);
    return HourlyWeather.fromJson(response);
  }

  static Future<WeeklyWeather> getWeeklyForecast() async {
    await fetchLocation();
    final url = _constructWeeklyForecastUrl();
    final response = await _fetchData(url);
    return WeeklyWeather.fromJson(response);
  }

  static Future<Weather> getWeatherByCityName({
    required String cityName,
  }) async {
    final url = _constructWeatherByCityUrl(cityName);
    final response = await _fetchData(url);
    return Weather.fromJson(response);
  }

  static String _constructWeatherUrl() =>
      '${Constants.baseUrl}/weather?lat=$lat&lon=$lon&units=metric&appid=${Constants.apiKey}';

  static String _constructForecastUrl() =>
      '${Constants.baseUrl}/forecast?lat=$lat&lon=$lon&units=metric&appid=${Constants.apiKey}';

  static String _constructWeatherByCityUrl(String cityName) =>
      '${Constants.baseUrl}/weather?q=$cityName&units=metric&appid=${Constants.apiKey}';

  static String _constructWeeklyForecastUrl() =>
      '${Constants.weeklyWeatherUrl}&latitude=$lat&longitude=$lon';

  static Future<Map<String, dynamic>> _fetchData(String url) async {
    try {
      final response = await dio.get<Map<String, dynamic>>(url);

      if (response.statusCode == 200) {
        return response.data!;
      } else {
        printWarning('Failed to load data: ${response.statusCode}');
        throw Exception('Failed to load data');
      }
    } catch (e) {
      printWarning('Error fetching data from $url: $e');
      throw Exception('Error fetching data');
    }
  }
}