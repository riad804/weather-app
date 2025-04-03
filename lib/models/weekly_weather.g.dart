// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeeklyWeather _$WeeklyWeatherFromJson(Map<String, dynamic> json) =>
    WeeklyWeather(
      (json['latitude'] as num).toDouble(),
      (json['longitude'] as num).toDouble(),
      (json['generationtimeMs'] as num).toDouble(),
      (json['utcOffsetSeconds'] as num).toInt(),
      json['timezone'] as String,
      json['timezoneAbbreviation'] as String,
      (json['elevation'] as num).toDouble(),
      json['currentUnits'],
      json['current'],
      json['dailyUnits'],
      Daily.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeeklyWeatherToJson(WeeklyWeather instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtimeMs': instance.generationtimeMs,
      'utcOffsetSeconds': instance.utcOffsetSeconds,
      'timezone': instance.timezone,
      'timezoneAbbreviation': instance.timezoneAbbreviation,
      'elevation': instance.elevation,
      'currentUnits': instance.currentUnits,
      'current': instance.current,
      'dailyUnits': instance.dailyUnits,
      'daily': instance.daily,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) =>
    Current(json['time'] as String, (json['interval'] as num).toInt());

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
  'time': instance.time,
  'interval': instance.interval,
};

Daily _$DailyFromJson(Map<String, dynamic> json) => Daily(
  json['time'] as List<dynamic>,
  json['weatherCode'] as List<dynamic>,
  json['temperature2mMax'] as List<dynamic>,
  json['temperature2mMin'] as List<dynamic>,
);

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
  'time': instance.time,
  'weatherCode': instance.weatherCode,
  'temperature2mMax': instance.temperature2mMax,
  'temperature2mMin': instance.temperature2mMin,
};

CurrentUnits _$CurrentUnitsFromJson(Map<String, dynamic> json) =>
    CurrentUnits(json['time'] as String, json['interval'] as String);

Map<String, dynamic> _$CurrentUnitsToJson(CurrentUnits instance) =>
    <String, dynamic>{'time': instance.time, 'interval': instance.interval};

DailyUnits _$DailyUnitsFromJson(Map<String, dynamic> json) => DailyUnits(
  json['time'] as String,
  json['weatherCode'] as String,
  json['temperature2mMax'] as String,
  json['temperature2mMin'] as String,
);

Map<String, dynamic> _$DailyUnitsToJson(DailyUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weatherCode': instance.weatherCode,
      'temperature2mMax': instance.temperature2mMax,
      'temperature2mMin': instance.temperature2mMin,
    };
