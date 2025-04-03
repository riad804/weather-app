// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyWeather _$HourlyWeatherFromJson(Map<String, dynamic> json) =>
    HourlyWeather(
      json['cod'] as String,
      (json['message'] as num).toInt(),
      (json['cnt'] as num).toInt(),
      (json['list'] as List<dynamic>)
          .map((e) => WeatherEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HourlyWeatherToJson(HourlyWeather instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list,
      'city': instance.city,
    };

WeatherEntry _$WeatherEntryFromJson(Map<String, dynamic> json) => WeatherEntry(
  (json['dt'] as num).toInt(),
  Main.fromJson(json['main'] as Map<String, dynamic>),
  (json['weather'] as List<dynamic>)
      .map((e) => WeatherData.fromJson(e as Map<String, dynamic>))
      .toList(),
  Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
  Wind.fromJson(json['wind'] as Map<String, dynamic>),
  (json['visibility'] as num).toInt(),
  json['pop'],
  json['sys'] == null
      ? null
      : Sys.fromJson(json['sys'] as Map<String, dynamic>),
  json['rain'] == null
      ? null
      : Rain.fromJson(json['rain'] as Map<String, dynamic>),
  json['dtTxt'] as String,
);

Map<String, dynamic> _$WeatherEntryToJson(WeatherEntry instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'pop': instance.pop,
      'sys': instance.sys,
      'rain': instance.rain,
      'dtTxt': instance.dtTxt,
    };

Main _$MainFromJson(Map<String, dynamic> json) => Main(
  (json['temp'] as num).toDouble(),
  (json['feelsLike'] as num).toDouble(),
  (json['tempMin'] as num).toDouble(),
  (json['tempMax'] as num).toDouble(),
  (json['pressure'] as num).toInt(),
  (json['seaLevel'] as num).toInt(),
  (json['grndLevel'] as num).toInt(),
  (json['humidity'] as num).toInt(),
  (json['tempKf'] as num).toDouble(),
);

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
  'temp': instance.temp,
  'feelsLike': instance.feelsLike,
  'tempMin': instance.tempMin,
  'tempMax': instance.tempMax,
  'pressure': instance.pressure,
  'seaLevel': instance.seaLevel,
  'grndLevel': instance.grndLevel,
  'humidity': instance.humidity,
  'tempKf': instance.tempKf,
};

Clouds _$CloudsFromJson(Map<String, dynamic> json) =>
    Clouds((json['all'] as num).toInt());

Map<String, dynamic> _$CloudsToJson(Clouds instance) => <String, dynamic>{
  'all': instance.all,
};

Wind _$WindFromJson(Map<String, dynamic> json) => Wind(
  (json['speed'] as num).toDouble(),
  (json['deg'] as num).toInt(),
  (json['gust'] as num).toDouble(),
);

Map<String, dynamic> _$WindToJson(Wind instance) => <String, dynamic>{
  'speed': instance.speed,
  'deg': instance.deg,
  'gust': instance.gust,
};

City _$CityFromJson(Map<String, dynamic> json) => City(
  (json['id'] as num).toInt(),
  json['name'] as String,
  Coord.fromJson(json['coord'] as Map<String, dynamic>),
  json['country'] as String,
  (json['population'] as num).toInt(),
  (json['timezone'] as num).toInt(),
  (json['sunrise'] as num).toInt(),
  (json['sunset'] as num).toInt(),
);

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'coord': instance.coord,
  'country': instance.country,
  'population': instance.population,
  'timezone': instance.timezone,
  'sunrise': instance.sunrise,
  'sunset': instance.sunset,
};

Coord _$CoordFromJson(Map<String, dynamic> json) =>
    Coord((json['lat'] as num).toDouble(), (json['lon'] as num).toDouble());

Map<String, dynamic> _$CoordToJson(Coord instance) => <String, dynamic>{
  'lat': instance.lat,
  'lon': instance.lon,
};

Rain _$RainFromJson(Map<String, dynamic> json) =>
    Rain((json['threeHours'] as num).toDouble());

Map<String, dynamic> _$RainToJson(Rain instance) => <String, dynamic>{
  'threeHours': instance.threeHours,
};

Sys _$SysFromJson(Map<String, dynamic> json) => Sys(json['pod'] as String);

Map<String, dynamic> _$SysToJson(Sys instance) => <String, dynamic>{
  'pod': instance.pod,
};
