import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather {
  final Coord coord;
  final List<WeatherData> weather;
  final String base;
  final Main main;
  final int? visibility;
  final Wind wind;
  final Rain? rain;
  final Clouds clouds;
  final int dt;
  final Sys sys;
  final int timezone;
  final int id;
  final String name;
  final int cod;
  
  Weather(this.coord, this.weather, this.base, this.main, this.visibility, this.wind, this.rain, this.clouds, this.dt, this.sys, this.timezone, this.id, this.name, this.cod);

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

@JsonSerializable()
class Coord {
  final double lon;
  final double lat;
  Coord(this.lon, this.lat);

  factory Coord.fromJson(Map<String, dynamic> json) =>
      _$CoordFromJson(json);
  Map<String, dynamic> toJson() => _$CoordToJson(this);
}

@JsonSerializable()
class WeatherData {
  final int id;
  final String main;
  final String description;
  final String icon;
  WeatherData(this.id, this.main, this.description, this.icon);

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherDataToJson(this);
}
@JsonSerializable()
class Main {
  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int? pressure;
  final int? humidity;
  final int? seaLevel;
  final int? grndLevel;
  final int? visibility;
  Main(this.temp, this.feelsLike, this.tempMin, this.tempMax, this.pressure, this.humidity, this.seaLevel, this.grndLevel, this.visibility);

  factory Main.fromJson(Map<String, dynamic> json) =>
      _$MainFromJson(json);
  Map<String, dynamic> toJson() => _$MainToJson(this);
}

@JsonSerializable()
class Wind {
  final double speed;
  final int deg;
  final double? gust;
  Wind(this.speed, this.deg, this.gust);

  factory Wind.fromJson(Map<String, dynamic> json) =>
      _$WindFromJson(json);
  Map<String, dynamic> toJson() => _$WindToJson(this);
}

@JsonSerializable()
class Rain {
  final double? oneHour;
  Rain(this.oneHour);

  factory Rain.fromJson(Map<String, dynamic> json) =>
      _$RainFromJson(json);
  Map<String, dynamic> toJson() => _$RainToJson(this);
}


@JsonSerializable()
class Clouds {
  final int all;
  Clouds(this.all);

  factory Clouds.fromJson(Map<String, dynamic> json) =>
      _$CloudsFromJson(json);
  Map<String, dynamic> toJson() => _$CloudsToJson(this);
}

@JsonSerializable()
class Sys {
  final int type;
  final int id;
  final String country;
  final int sunrise;
  final int sunset;
  Sys(this.type, this.id, this.country, this.sunrise, this.sunset);

  factory Sys.fromJson(Map<String, dynamic> json) =>
      _$SysFromJson(json);
  Map<String, dynamic> toJson() => _$SysToJson(this);
}