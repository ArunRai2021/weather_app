import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../response/weather_response.dart';

part 'rest_api.g.dart';

@RestApi(baseUrl: "https://api.openweathermap.org/data/3.0/onecall?")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("")
  Future<WeatherInformation>? getWeatherInformation(
    @Query("lat") double lat,
    @Query("lon") double lon,
    @Query("appid") String appid,
    @Query("units") String unit,
  );
}
