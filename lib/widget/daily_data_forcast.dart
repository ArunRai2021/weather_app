import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/controller/homeController.dart';
import 'package:weather_app/utils/custom_colors.dart';

class DailyDataForcast extends StatelessWidget {
  HomeController homeController = Get.find();

  DailyDataForcast({Key? key}) : super(key: key);

  // String manipulation
  String getDay(final day) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(day * 1000);
    final x = DateFormat("EEE").format(time);
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: CustomColors.dividerLine.withAlpha(150),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              "next Days",
              style:
                  TextStyle(color: CustomColors.textColorBlack, fontSize: 17),
            ),
          ),
          dailyList(),
        ],
      ),
    );
  }

  Widget dailyList() {
    return SizedBox(
      height: 300,
      child: Obx(
        () => ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount:
                // homeController.weatherInformation.value.daily?.length,
                (homeController.weatherInformation.value.daily?.length ?? 0) > 7
                    ? 7
                    : homeController.weatherInformation.value.daily?.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 60,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 80,
                          child: Text(
                            getDay(homeController.weatherInformation.value
                                    .daily?[index].dt ??
                                0),
                            style: const TextStyle(
                                color: CustomColors.textColorBlack),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                              "assets/weather/${homeController.weatherInformation.value.daily?[index].weather![0].icon}.png"),
                        ),
                        Text(
                            "${homeController.weatherInformation.value.daily?[index].temp!.max}°/${homeController.weatherInformation.value.daily?[index].temp!.min}")
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    color: CustomColors.dividerLine,
                  )
                ],
              );
            }),
      ),
    );
  }
}
