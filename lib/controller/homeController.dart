import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/global_controller.dart';
import 'package:weather_app/response/weather_response.dart';

import '../network/rest_api.dart';

class HomeController extends GetxController {
  GlobalController globalController = Get.find();
  ApiClient mClient = ApiClient(Dio());
  var weatherInformation = WeatherInformation().obs;
  var loading = true.obs;

  @override
  onInit() {
    super.onInit();
    weatherData();
  }

  Future<void> weatherData() async {
    loading.value = true;
    WeatherInformation? response = await mClient.getWeatherInformation(
      globalController.getLatitude().value,
      globalController.getLongitude().value,
      "d565f6b9e7a72bb216c2f7b83aa081d5",
      "metric",
    );
    weatherInformation.value = response!;
    loading.value = false;
  }
}
