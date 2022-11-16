import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/global_controller.dart';
import 'package:weather_app/widget/comfort_level.dart';
import 'package:weather_app/widget/current_weather.dart';
import 'package:weather_app/widget/header_widget.dart';
import 'package:weather_app/widget/hourly_data_widget.dart';
import '../widget/daily_data_forcast.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Obx(
        () => globalController.checkLoading().isTrue
            ? const Center(child: CircularProgressIndicator())
            : ListView(
                scrollDirection: Axis.vertical,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  HeaderWidget(),
                  CurrentWeatherWidget(),
                  HourlyDataWidget(),
                  DailyDataForcast(),
                  ComfortLevel(),
                ],
              ),
      )),
    );
  }
}
