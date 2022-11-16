import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'global_controller.dart';

class HeaderWidgetController extends GetxController {
  var city = "".obs;
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  @override
  void onInit() {
    getAddress(globalController.getLatitude().value,
        globalController.getLongitude().value);
  }

  getAddress(lat, lon) async {
    List<Placemark> placemark = await placemarkFromCoordinates(lat, lon);
    Placemark place = placemark[0];
    city.value = place.locality!;
  }
}
