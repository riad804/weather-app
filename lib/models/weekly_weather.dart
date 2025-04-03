import 'package:json_annotation/json_annotation.dart';

part 'weekly_weather.g.dart';

@JsonSerializable()
class WeeklyWeather {
  final double latitude;
  final double longitude;
  final double generationtimeMs;
  final int utcOffsetSeconds;
  final String timezone;
  final String timezoneAbbreviation;
  final double elevation;
  final dynamic currentUnits;
  final dynamic current;
  final dynamic dailyUnits;
  final Daily daily;
  WeeklyWeather(this.latitude, this.longitude, this.generationtimeMs, this.utcOffsetSeconds, this.timezone, this.timezoneAbbreviation, this.elevation, this.currentUnits, this.current, this.dailyUnits, this.daily);

  factory WeeklyWeather.fromJson(Map<String, dynamic> json) =>
      _$WeeklyWeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeeklyWeatherToJson(this);
}

@JsonSerializable()
class Current {
  final String time;
  final int interval;
  Current(this.time, this.interval);

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

@JsonSerializable()
class Daily {
  final List<dynamic> time;
  final List<dynamic> weatherCode;
  final List<dynamic> temperature2mMax;
  final List<dynamic> temperature2mMin;
  Daily(this.time, this.weatherCode, this.temperature2mMax, this.temperature2mMin);

  factory Daily.fromJson(Map<String, dynamic> json) =>
      _$DailyFromJson(json);
  Map<String, dynamic> toJson() => _$DailyToJson(this);
}

@JsonSerializable()
class CurrentUnits {
  final String time;
  final String interval;
  CurrentUnits(this.time, this.interval);

  factory CurrentUnits.fromJson(Map<String, dynamic> json) =>
      _$CurrentUnitsFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentUnitsToJson(this);
}

@JsonSerializable()
class DailyUnits {
  final String time;
  final String weatherCode;
  final String temperature2mMax;
  final String temperature2mMin;
  DailyUnits(this.time, this.weatherCode, this.temperature2mMax, this.temperature2mMin);

  factory DailyUnits.fromJson(Map<String, dynamic> json) =>
      _$DailyUnitsFromJson(json);
  Map<String, dynamic> toJson() => _$DailyUnitsToJson(this);
}