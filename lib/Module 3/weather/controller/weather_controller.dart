import 'package:flutter_assignment/Module%203/weather/model/weather_model.dart';
import 'package:flutter_assignment/Module%203/weather/service/weather_service.dart';
import 'package:flutter_assignment/Module%203/weather/utilities/snack_bar.dart';
import 'package:get/get.dart';


class WeatherController extends GetxController {
  final weatherService = Get.put(WeatherService());

  Future<Weather> getWeatherData() async {
    var res;
    try {
      res = await weatherService.getWeather();
      if (res.statusCode != 200 || res.statusCode != 201) {
        return WeatherSnackBars.errorSnackBar(message: res.data['message']);
      } else {}
    } catch (e) {
      WeatherSnackBars.errorSnackBar(message: e.toString());
    }
    return Weather.fromJson(res.data);
  }
}
