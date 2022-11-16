import 'package:json_annotation/json_annotation.dart';

part "weather_response.g.dart";

@JsonSerializable()
class WeatherInformation {
  WeatherInformation({
    this.lat,
    this.lon,
    this.timezone,
    this.timezoneOffset,
    this.current,
    this.hourly,
    this.daily,
  });

  dynamic lat;
  dynamic lon;
  String? timezone;
  dynamic timezoneOffset;
  Current? current;
  List<Hourly>? hourly;
  List<Daily>? daily;

  WeatherInformation.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
    timezone = json['timezone'];
    timezoneOffset = json['timezone_offset'];
    current = Current.fromJson(json['current']);
    hourly = List.from(json['hourly']).map((e) => Hourly.fromJson(e)).toList();
    daily = List.from(json['daily']).map((e) => Daily.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['lat'] = lat;
    _data['lon'] = lon;
    _data['timezone'] = timezone;
    _data['timezone_offset'] = timezoneOffset;
    _data['current'] = current?.toJson();
    _data['hourly'] = hourly?.map((e) => e.toJson()).toList();
    _data['daily'] = daily?.map((e) => e.toJson()).toList();
    return _data;
  }
}

@JsonSerializable()
class Current {
  Current({
    this.dt,
    this.sunrise,
    this.sunset,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.uvi,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.weather,
  });

  dynamic dt;
  dynamic sunrise;
  dynamic sunset;
  dynamic temp;
  dynamic feelsLike;
  dynamic pressure;
  dynamic humidity;
  dynamic dewPoint;
  dynamic uvi;
  dynamic clouds;
  dynamic visibility;
  dynamic windSpeed;
  dynamic windDeg;
  dynamic windGust;
  List<Weather>? weather;

  Current.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    temp = json['temp'];
    feelsLike = json['feels_like'];
    pressure = json['pressure'];
    humidity = json['humidity'];
    dewPoint = json['dew_point'];
    uvi = json['uvi'];
    clouds = json['clouds'];
    visibility = json['visibility'];
    windSpeed = json['wind_speed'];
    windDeg = json['wind_deg'];
    windGust = json['wind_gust'];
    weather =
        List.from(json['weather']).map((e) => Weather.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['dt'] = dt;
    _data['sunrise'] = sunrise;
    _data['sunset'] = sunset;
    _data['temp'] = temp;
    _data['feels_like'] = feelsLike;
    _data['pressure'] = pressure;
    _data['humidity'] = humidity;
    _data['dew_point'] = dewPoint;
    _data['uvi'] = uvi;
    _data['clouds'] = clouds;
    _data['visibility'] = visibility;
    _data['wind_speed'] = windSpeed;
    _data['wind_deg'] = windDeg;
    _data['wind_gust'] = windGust;
    _data['weather'] = weather?.map((e) => e.toJson()).toList();
    return _data;
  }
}

@JsonSerializable()
class Weather {
  Weather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  dynamic id;
  String? main;
  String? description;
  String? icon;

  Weather.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['main'] = main;
    _data['description'] = description;
    _data['icon'] = icon;
    return _data;
  }
}

@JsonSerializable()
class Hourly {
  Hourly({
    this.dt,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.uvi,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.weather,
    this.pop,
  });

  dynamic dt;
  dynamic temp;
  dynamic feelsLike;
  dynamic pressure;
  dynamic humidity;
  dynamic dewPoint;
  dynamic uvi;
  dynamic clouds;
  dynamic visibility;
  dynamic windSpeed;
  dynamic windDeg;
  dynamic windGust;
  List<Weather>? weather;
  dynamic pop;

  Hourly.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    temp = json['temp'];
    feelsLike = json['feels_like'];
    pressure = json['pressure'];
    humidity = json['humidity'];
    dewPoint = json['dew_point'];
    uvi = json['uvi'];
    clouds = json['clouds'];
    visibility = json['visibility'];
    windSpeed = json['wind_speed'];
    windDeg = json['wind_deg'];
    windGust = json['wind_gust'];
    weather =
        List.from(json['weather']).map((e) => Weather.fromJson(e)).toList();
    pop = json['pop'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['dt'] = dt;
    _data['temp'] = temp;
    _data['feels_like'] = feelsLike;
    _data['pressure'] = pressure;
    _data['humidity'] = humidity;
    _data['dew_point'] = dewPoint;
    _data['uvi'] = uvi;
    _data['clouds'] = clouds;
    _data['visibility'] = visibility;
    _data['wind_speed'] = windSpeed;
    _data['wind_deg'] = windDeg;
    _data['wind_gust'] = windGust;
    _data['weather'] = weather?.map((e) => e.toJson()).toList();
    _data['pop'] = pop;
    return _data;
  }
}

@JsonSerializable()
class Daily {
  Daily({
    this.dt,
    this.sunrise,
    this.sunset,
    this.moonrise,
    this.moonset,
    this.moonPhase,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.weather,
    this.clouds,
    this.pop,
    this.uvi,
  });

  dynamic dt;
  dynamic sunrise;
  dynamic sunset;
  dynamic moonrise;
  dynamic moonset;
  dynamic moonPhase;
  Temp? temp;
  FeelsLike? feelsLike;
  dynamic pressure;
  dynamic humidity;
  dynamic dewPoint;
  dynamic windSpeed;
  dynamic windDeg;
  dynamic windGust;
  List<Weather>? weather;
  dynamic clouds;
  dynamic pop;
  dynamic uvi;

  Daily.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    moonrise = json['moonrise'];
    moonset = json['moonset'];
    moonPhase = json['moon_phase'];
    temp = Temp.fromJson(json['temp']);
    feelsLike = FeelsLike.fromJson(json['feels_like']);
    pressure = json['pressure'];
    humidity = json['humidity'];
    dewPoint = json['dew_point'];
    windSpeed = json['wind_speed'];
    windDeg = json['wind_deg'];
    windGust = json['wind_gust'];
    weather =
        List.from(json['weather']).map((e) => Weather.fromJson(e)).toList();
    clouds = json['clouds'];
    pop = json['pop'];
    uvi = json['uvi'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['dt'] = dt;
    _data['sunrise'] = sunrise;
    _data['sunset'] = sunset;
    _data['moonrise'] = moonrise;
    _data['moonset'] = moonset;
    _data['moon_phase'] = moonPhase;
    _data['temp'] = temp?.toJson();
    _data['feels_like'] = feelsLike?.toJson();
    _data['pressure'] = pressure;
    _data['humidity'] = humidity;
    _data['dew_point'] = dewPoint;
    _data['wind_speed'] = windSpeed;
    _data['wind_deg'] = windDeg;
    _data['wind_gust'] = windGust;
    _data['weather'] = weather?.map((e) => e.toJson()).toList();
    _data['clouds'] = clouds;
    _data['pop'] = pop;
    _data['uvi'] = uvi;
    return _data;
  }
}

@JsonSerializable()
class Temp {
  Temp({
    required this.day,
    required this.min,
    required this.max,
    required this.night,
    required this.eve,
    required this.morn,
  });

  late final dynamic day;
  late final dynamic min;
  late final dynamic max;
  late final dynamic night;
  late final dynamic eve;
  late final dynamic morn;

  Temp.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    min = json['min'];
    max = json['max'];
    night = json['night'];
    eve = json['eve'];
    morn = json['morn'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['day'] = day;
    _data['min'] = min;
    _data['max'] = max;
    _data['night'] = night;
    _data['eve'] = eve;
    _data['morn'] = morn;
    return _data;
  }
}

@JsonSerializable()
class FeelsLike {
  FeelsLike({
    this.day,
    this.night,
    this.eve,
    this.morn,
  });

  dynamic day;
  dynamic night;
  dynamic eve;
  dynamic morn;

  FeelsLike.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    night = json['night'];
    eve = json['eve'];
    morn = json['morn'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['day'] = day;
    _data['night'] = night;
    _data['eve'] = eve;
    _data['morn'] = morn;
    return _data;
  }
}
