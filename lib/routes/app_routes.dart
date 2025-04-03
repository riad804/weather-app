import 'package:go_router/go_router.dart';
import 'package:weather_app/screens/home_screen.dart';
import 'package:weather_app/screens/report_screen.dart';
import 'package:weather_app/screens/search_screen.dart';
import 'package:weather_app/screens/settings_screen.dart';
import 'package:weather_app/screens/weather_detail_screen.dart';
import 'package:weather_app/screens/weather_screen.dart';

final GoRouter routes = GoRouter(
  routes: [
    ShellRoute(
      builder: (ctx, state, child) {
        int currentIndex = 0;
        if (state.uri.path == "/search") {
          currentIndex = 1;
        } else if (state.uri.path == "/report") {
          currentIndex = 2;
        } else if (state.uri.path == "/settings") {
          currentIndex = 3;
        }

        return HomeScreen(child: child, index: currentIndex);
      },

      routes: [
        GoRoute(path: '/', builder: (ctx, state) => WeatherScreen()),
        GoRoute(path: '/search', builder: (ctx, state) => SearchScreen()),
        GoRoute(path: '/report', builder: (ctx, state) => ReportScreen()),
        GoRoute(path: '/settings', builder: (ctx, state) => SettingsScreen()),
      ]
    ),
    GoRoute(path: '/weather-details', builder: (ctx, state) => WeatherDetailScreen(cityName: state.extra as String)),
  ],
);