// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
  Coord.fromJson(json['coord'] as Map<String, dynamic>),
  (json['weather'] as List<dynamic>)
      .map((e) => WeatherData.fromJson(e as Map<String, dynamic>))
      .toList(),
  json['base'] as String,
  Main.fromJson(json['main'] as Map<String, dynamic>),
  (json['visibility'] as num?)?.toInt(),
  Wind.fromJson(json['wind'] as Map<String, dynamic>),
  json['rain'] == null
      ? null
      : Rain.fromJson(json['rain'] as Map<String, dynamic>),
  Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
  (json['dt'] as num).toInt(),
  Sys.fromJson(json['sys'] as Map<String, dynamic>),
  (json['timezone'] as num).toInt(),
  (json['id'] as num).toInt(),
  json['name'] as String,
  (json['cod'] as num).toInt(),
);

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
  'coord': instance.coord,
  'weather': instance.weather,
  'base': instance.base,
  'main': instance.main,
  'visibility': instance.visibility,
  'wind': instance.wind,
  'rain': instance.rain,
  'clouds': instance.clouds,
  'dt': instance.dt,
  'sys': instance.sys,
  'timezone': instance.timezone,
  'id': instance.id,
  'name': instance.name,
  'cod': instance.cod,
};

Coord _$CoordFromJson(Map<String, dynamic> json) =>
    Coord((json['lon'] as num).toDouble(), (json['lat'] as num).toDouble());

Map<String, dynamic> _$CoordToJson(Coord instance) => <String, dynamic>{
  'lon': instance.lon,
  'lat': instance.lat,
};

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) => WeatherData(
  (json['id'] as num).toInt(),
  json['main'] as String,
  json['description'] as String,
  json['icon'] as String,
);

Map<String, dynamic> _$WeatherDataToJson(WeatherData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

Main _$MainFromJson(Map<String, dynamic> json) => Main(
  (json['temp'] as num).toDouble(),
  (json['feelsLike'] as num).toDouble(),
  (json['tempMin'] as num).toDouble(),
  (json['tempMax'] as num).toDouble(),
  (json['pressure'] as num?)?.toInt(),
  (json['humidity'] as num?)?.toInt(),
  (json['seaLevel'] as num?)?.toInt(),
  (json['grndLevel'] as num?)?.toInt(),
  (json['visibility'] as num?)?.toInt(),
);

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
  'temp': instance.temp,
  'feelsLike': instance.feelsLike,
  'tempMin': instance.tempMin,
  'tempMax': instance.tempMax,
  'pressure': instance.pressure,
  'humidity': instance.humidity,
  'seaLevel': instance.seaLevel,
  'grndLevel': instance.grndLevel,
  'visibility': instance.visibility,
};

Wind _$WindFromJson(Map<String, dynamic> json) => Wind(
  (json['speed'] as num).toDouble(),
  (json['deg'] as num).toInt(),
  (json['gust'] as num?)?.toDouble(),
);

Map<String, dynamic> _$WindToJson(Wind instance) => <String, dynamic>{
  'speed': instance.speed,
  'deg': instance.deg,
  'gust': instance.gust,
};

Rain _$RainFromJson(Map<String, dynamic> json) =>
    Rain((json['oneHour'] as num?)?.toDouble());

Map<String, dynamic> _$RainToJson(Rain instance) => <String, dynamic>{
  'oneHour': instance.oneHour,
};

Clouds _$CloudsFromJson(Map<String, dynamic> json) =>
    Clouds((json['all'] as num).toInt());

Map<String, dynamic> _$CloudsToJson(Clouds instance) => <String, dynamic>{
  'all': instance.all,
};

Sys _$SysFromJson(Map<String, dynamic> json) => Sys(
  (json['type'] as num).toInt(),
  (json['id'] as num).toInt(),
  json['country'] as String,
  (json['sunrise'] as num).toInt(),
  (json['sunset'] as num).toInt(),
);

Map<String, dynamic> _$SysToJson(Sys instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'country': instance.country,
  'sunrise': instance.sunrise,
  'sunset': instance.sunset,
};
