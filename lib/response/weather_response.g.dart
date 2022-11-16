// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherInformation _$WeatherInformationFromJson(Map<String, dynamic> json) =>
    WeatherInformation(
      lat: json['lat'],
      lon: json['lon'],
      timezone: json['timezone'] as String?,
      timezoneOffset: json['timezoneOffset'],
      current: json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
      hourly: (json['hourly'] as List<dynamic>?)
          ?.map((e) => Hourly.fromJson(e as Map<String, dynamic>))
          .toList(),
      daily: (json['daily'] as List<dynamic>?)
          ?.map((e) => Daily.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeatherInformationToJson(WeatherInformation instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezoneOffset': instance.timezoneOffset,
      'current': instance.current,
      'hourly': instance.hourly,
      'daily': instance.daily,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      dt: json['dt'],
      sunrise: json['sunrise'],
      sunset: json['sunset'],
      temp: json['temp'],
      feelsLike: json['feelsLike'],
      pressure: json['pressure'],
      humidity: json['humidity'],
      dewPoint: json['dewPoint'],
      uvi: json['uvi'],
      clouds: json['clouds'],
      visibility: json['visibility'],
      windSpeed: json['windSpeed'],
      windDeg: json['windDeg'],
      windGust: json['windGust'],
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dewPoint': instance.dewPoint,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'windSpeed': instance.windSpeed,
      'windDeg': instance.windDeg,
      'windGust': instance.windGust,
      'weather': instance.weather,
    };

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      id: json['id'],
      main: json['main'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

Hourly _$HourlyFromJson(Map<String, dynamic> json) => Hourly(
      dt: json['dt'],
      temp: json['temp'],
      feelsLike: json['feelsLike'],
      pressure: json['pressure'],
      humidity: json['humidity'],
      dewPoint: json['dewPoint'],
      uvi: json['uvi'],
      clouds: json['clouds'],
      visibility: json['visibility'],
      windSpeed: json['windSpeed'],
      windDeg: json['windDeg'],
      windGust: json['windGust'],
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      pop: json['pop'],
    );

Map<String, dynamic> _$HourlyToJson(Hourly instance) => <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dewPoint': instance.dewPoint,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'windSpeed': instance.windSpeed,
      'windDeg': instance.windDeg,
      'windGust': instance.windGust,
      'weather': instance.weather,
      'pop': instance.pop,
    };

Daily _$DailyFromJson(Map<String, dynamic> json) => Daily(
      dt: json['dt'],
      sunrise: json['sunrise'],
      sunset: json['sunset'],
      moonrise: json['moonrise'],
      moonset: json['moonset'],
      moonPhase: json['moonPhase'],
      temp: json['temp'] == null
          ? null
          : Temp.fromJson(json['temp'] as Map<String, dynamic>),
      feelsLike: json['feelsLike'] == null
          ? null
          : FeelsLike.fromJson(json['feelsLike'] as Map<String, dynamic>),
      pressure: json['pressure'],
      humidity: json['humidity'],
      dewPoint: json['dewPoint'],
      windSpeed: json['windSpeed'],
      windDeg: json['windDeg'],
      windGust: json['windGust'],
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      clouds: json['clouds'],
      pop: json['pop'],
      uvi: json['uvi'],
    );

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moonPhase': instance.moonPhase,
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dewPoint': instance.dewPoint,
      'windSpeed': instance.windSpeed,
      'windDeg': instance.windDeg,
      'windGust': instance.windGust,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'pop': instance.pop,
      'uvi': instance.uvi,
    };

Temp _$TempFromJson(Map<String, dynamic> json) => Temp(
      day: json['day'],
      min: json['min'],
      max: json['max'],
      night: json['night'],
      eve: json['eve'],
      morn: json['morn'],
    );

Map<String, dynamic> _$TempToJson(Temp instance) => <String, dynamic>{
      'day': instance.day,
      'min': instance.min,
      'max': instance.max,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };

FeelsLike _$FeelsLikeFromJson(Map<String, dynamic> json) => FeelsLike(
      day: json['day'],
      night: json['night'],
      eve: json['eve'],
      morn: json['morn'],
    );

Map<String, dynamic> _$FeelsLikeToJson(FeelsLike instance) => <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };
