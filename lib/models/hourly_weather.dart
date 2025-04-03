import 'package:json_annotation/json_annotation.dart';

import 'weather.dart';

part 'hourly_weather.g.dart';

@JsonSerializable()
class HourlyWeather {
  final String cod;
  final int message;
  final int cnt;
  final List<WeatherEntry> list;
  final City? city;

  HourlyWeather(this.cod, this.message, this.cnt, this.list, this.city);

  factory HourlyWeather.fromJson(Map<String, dynamic> json) =>
      _$HourlyWeatherFromJson(json);
  Map<String, dynamic> toJson() => _$HourlyWeatherToJson(this);
}

@JsonSerializable()
class WeatherEntry {
  final int dt;
  final Main main;
  final List<WeatherData> weather;
  final Clouds clouds;
  final Wind wind;
  final int visibility;
  final dynamic pop;
  final Sys? sys;
  final Rain? rain;
  final String dtTxt;

  WeatherEntry(this.dt, this.main, this.weather, this.clouds, this.wind, this.visibility, this.pop, this.sys, this.rain, this.dtTxt);

  factory WeatherEntry.fromJson(Map<String, dynamic> json) =>
      _$WeatherEntryFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherEntryToJson(this);
}

@JsonSerializable()
class Main {
  Main(this.temp, this.feelsLike, this.tempMin, this.tempMax, this.pressure, this.seaLevel, this.grndLevel, this.humidity, this.tempKf);

  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int seaLevel;
  final int grndLevel;
  final int humidity;
  final double tempKf;

  factory Main.fromJson(Map<String, dynamic> json) =>
      _$MainFromJson(json);
  Map<String, dynamic> toJson() => _$MainToJson(this);
}

@JsonSerializable()
class Clouds {
  Clouds(this.all);
  final int all;

  factory Clouds.fromJson(Map<String, dynamic> json) =>
      _$CloudsFromJson(json);
  Map<String, dynamic> toJson() => _$CloudsToJson(this);
}

@JsonSerializable()
class Wind {
  Wind(this.speed, this.deg, this.gust);
  final double speed;
  final int deg;
  final double gust;

  factory Wind.fromJson(Map<String, dynamic> json) =>
      _$WindFromJson(json);
  Map<String, dynamic> toJson() => _$WindToJson(this);
}

@JsonSerializable()
class City {
  City(this.id, this.name, this.coord, this.country, this.population, this.timezone, this.sunrise, this.sunset);
  final int id;
  final String name;
  final Coord coord;
  final String country;
  final int population;
  final int timezone;
  final int sunrise;
  final int sunset;

  factory City.fromJson(Map<String, dynamic> json) =>
      _$CityFromJson(json);
  Map<String, dynamic> toJson() => _$CityToJson(this);
}

@JsonSerializable()
class Coord {
  Coord(this.lat, this.lon);
  final double lat;
  final double lon;

  factory Coord.fromJson(Map<String, dynamic> json) =>
      _$CoordFromJson(json);
  Map<String, dynamic> toJson() => _$CoordToJson(this);
}

@JsonSerializable()
class Rain {
  Rain(this.threeHours);
  final double threeHours;

  factory Rain.fromJson(Map<String, dynamic> json) =>
      _$RainFromJson(json);
  Map<String, dynamic> toJson() => _$RainToJson(this);
}

@JsonSerializable()
class Sys {
  Sys(this.pod);
  final String pod;

  factory Sys.fromJson(Map<String, dynamic> json) =>
      _$SysFromJson(json);
  Map<String, dynamic> toJson() => _$SysToJson(this);
}