import 'package:flutter/material.dart';
import 'CustomWidget.dart';
import 'apiModel.dart';
import 'model_clint.dart';

class AppUI extends StatefulWidget {
  const AppUI({Key? key}) : super(key: key);

  @override
  State<AppUI> createState() => _AppUIState();
}

class _AppUIState extends State<AppUI> {
  WeatherClient client = WeatherClient();
  Weather? data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    try {
      Weather? weatherData = await client.getCurrentWeather("Rajshahi");
      setState(() {
        data = weatherData;
      });
    } catch (e) {
      if(data?.cod=="401"){
        print("401");

      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Weather Update"),
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://images.hdqwalls.com/download/night-road-blue-weather-forest-stars-4k-54-1280x2120.jpg",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: data != null
              ? Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              UpdateWeather(
                "https://static.vecteezy.com/system/resources/previews/008/854/797/original/sunny-and-rainy-cloudy-day-weather-forecast-icon-meteorological-sign-3d-render-png.png",
                "${data!.temp}",
                "${data!.city}",
                "${data!.currentSky}",
                "${data!.description}",
              ),
              SizedBox(height: 40),
              Text(
                "Additional Information",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Divider(color: Colors.white),
              AdditionalInfo(
                "${data!.windSpeed}",
                "${data!.humidity}",
                "${data!.feelsLike}",
                "${data!.pressure}",
              ),
            ],
          )
              : const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
