import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/controller/global_controller.dart';
import 'package:weather_app/controller/homeController.dart';
import 'package:weather_app/utils/custom_colors.dart';

class HourlyDataWidget extends StatelessWidget {
  HomeController homeController = Get.find();

  HourlyDataWidget({Key? key}) : super(key: key);
  var cardIndex = GlobalController().getIndex();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          alignment: Alignment.topCenter,
          child: const Text(
            "Today",
            style: TextStyle(fontSize: 18),
          ),
        ),
        hourlyList(),
      ],
    );
  }

  Widget hourlyList() {
    return Container(
      height: 160,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:
              (homeController.weatherInformation.value.hourly?.length ?? 0) > 12
                  ? 12
                  : homeController.weatherInformation.value.hourly?.length,
          itemBuilder: (context, index) {
            return Obx(
              () => GestureDetector(
                onTap: () {
                  cardIndex.value = index;
                },
                child: Container(
                  width: 90,
                  margin: const EdgeInsets.only(left: 20, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.5, 0),
                            blurRadius: 30,
                            spreadRadius: 1,
                            color: CustomColors.dividerLine.withAlpha(150)),
                      ],
                      gradient: cardIndex.value == index
                          ? const LinearGradient(colors: [
                              CustomColors.firstGradientColor,
                              CustomColors.secondGradientColor
                            ])
                          : null),
                  child: HourlyDetails(
                    index: index,
                    cardIndex: cardIndex.toInt(),
                    temp: homeController
                            .weatherInformation.value.hourly?[index].temp! ??
                        0.0,
                    timestamp: homeController
                            .weatherInformation.value.hourly?[index].dt ??
                        0,
                    weatherIcon: homeController.weatherInformation.value
                            .hourly?[index].weather![0].icon ??
                        "",
                  ),
                ),
              ),
            );
          }),
    );
  }
}

// hourly details class
class HourlyDetails extends StatelessWidget {
  double temp;
  int index;
  int cardIndex;
  int timestamp;
  String weatherIcon;

  String getTime(final timeStamp) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(timestamp);
    String x = DateFormat('jm').format(time);
    return x;
  }

  HourlyDetails({
    Key? key,
    required this.timestamp,
    required this.temp,
    required this.weatherIcon,
    required this.cardIndex,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            getTime(timestamp),
            style: TextStyle(
                color: cardIndex == index
                    ? Colors.white
                    : CustomColors.textColorBlack),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          child: Image.asset(
            "assets/weather/$weatherIcon.png",
            height: 40,
            width: 40,
          ),
        ),
        Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Text(
              "$temp°",
              style: TextStyle(
                color: cardIndex == index
                    ? Colors.white
                    : CustomColors.textColorBlack,
              ),
            ))
      ],
    );
  }
}
