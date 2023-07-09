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
  WatherClint client = WatherClint();
  Wather? data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    data = await client.getCurrentWather("Rajshahi");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Weather Update"),
          centerTitle: true,
        ),
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  UpdateWeather(Icons.sunny, "32.4", "${data?.city}"),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Additional Information",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  AdditonalInfo("${data?.windSpeed}", "${data?.humidity}", "${data?.feelsLike}", "${data?.pressure}"),
                ],
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
