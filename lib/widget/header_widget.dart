import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/controller/headerwidget_controller.dart';

class HeaderWidget extends StatelessWidget {
  HeaderWidget({Key? key}) : super(key: key);
  HeaderWidgetController headerWidgetController =
      Get.put(HeaderWidgetController());
  var date = DateFormat("yMMMMd").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.topLeft,
            child: Obx(
              () => Text(
                headerWidgetController.city.value,
                style: const TextStyle(fontSize: 30, height: 2),
              ),
            )),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          alignment: Alignment.topLeft,
          child: Text(
            date,
            style: const TextStyle(fontSize: 15, height: 1.5),
          ),
        ),
      ],
    );
  }
}
