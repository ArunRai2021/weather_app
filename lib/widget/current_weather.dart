import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/homeController.dart';
import 'package:weather_app/utils/custom_colors.dart';

class CurrentWeatherWidget extends StatelessWidget {
  HomeController homeController = Get.put(HomeController());

  CurrentWeatherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        tempretureAreaWidget(),
        const SizedBox(
          height: 20,
        ),
        currentWeatherMoreDetailsWidget()
      ],
    );
  }

  tempretureAreaWidget() {
    return Obx(
      () => homeController.loading.value
          ? const CircularProgressIndicator()
          : Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            "assets/weather/${homeController.weatherInformation.value.current?.weather?[0].icon}.png",
            height: 80,
            width: 80,
          ),
          Container(
            height: 50,
            width: 1,
            color: CustomColors.dividerLine,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text:
                    "${homeController.weatherInformation.value.current?.temp.toString()}°",
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 50,
                  color: CustomColors.textColorBlack,
                )),
            TextSpan(
                text:
                    "${homeController.weatherInformation.value.current?.weather![0].description}",
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: CustomColors.textColorBlack,
                )),
          ]))
        ],
      ),
    );
  }

  currentWeatherMoreDetailsWidget() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: CustomColors.cardColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset("assets/icons/windspeed.png"),
            ),
            Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: CustomColors.cardColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset("assets/icons/clouds.png"),
            ),
            Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: CustomColors.cardColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset("assets/icons/humidity.png"),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 20,
                width: 60,
                child: Text(
                  "${homeController.weatherInformation.value.current?.windSpeed} km/h",
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
                width: 60,
                child: Text(
                  "${homeController.weatherInformation.value.current?.clouds} %",
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
                width: 60,
                child: Text(
                  "${homeController.weatherInformation.value.current?.humidity} %",
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
