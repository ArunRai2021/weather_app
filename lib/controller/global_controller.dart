import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:weather_app/network/rest_api.dart';
import 'package:weather_app/response/weather_response.dart';

class GlobalController extends GetxController {
  final RxBool _isLoading = true.obs;
  final RxDouble _lattitude = 0.0.obs;
  final RxDouble _longitude = 0.0.obs;
  var currentIndex = 0.obs;
  ApiClient mClient = ApiClient(Dio());

  RxBool checkLoading() {
    return _isLoading;
  }

  RxDouble getLatitude() {
    return _lattitude;
  }

  RxDouble getLongitude() {
    return _longitude;
  }

  @override
  void onInit() {
    if (_isLoading.isTrue) {
      getLocation();
    } else {
      getIndex();
    }
  }

  getLocation() async {
    bool isServiceEnabled;
    LocationPermission locationPermission;
    isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isServiceEnabled) {
      return Future.error("Location not enabled");
    }
    locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.deniedForever) {
      return Future.error("Location Permission or denied Forever");
    } else if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        return Future.error("Location Permission is denied");
      }
    }
    return await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high)
        .then((value) {
      _lattitude.value = value.latitude;
      _longitude.value = value.longitude;
      _isLoading.value = false;
    });
  }

  RxInt getIndex() {
    return currentIndex;
  }
}
