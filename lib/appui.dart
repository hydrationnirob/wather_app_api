import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    data = await client.getCurrentWeather("Rajshahi");
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
              image: NetworkImage("https://images.hdqwalls.com/download/night-road-blue-weather-forest-stars-4k-54-1280x2120.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    UpdateWeather(Icons.motion_photos_on, "${data?.temp}", "${data?.city}"),
                    SizedBox(height: 40),
                    Text(
                      "Additional Information",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Divider(color: Colors.white),
                    AdditionalInfo("${data?.windSpeed}", "${data?.humidity}", "${data?.feelsLike}", "${data?.pressure}"),



                  ],
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),

      ),
    );
  }
}
